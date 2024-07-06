Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926217740
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720257323; cv=none; b=X0ZTGbRWJeMsfXdV6rNMHDUPilJewqLHkhVKtk3Ry0XCWWbBSArZ82A+9yiMYdJ49Cl7tfZQjRd2WmkK3Z3LryxYkHQZko+8AYCLj9iwmBekBzQDiqIwX3jPllIgBOdf1z5pV7q31MnqjSxR+4OrZcviDvowFcu0h8HodGD4F3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720257323; c=relaxed/simple;
	bh=4I3Qgh9X8lv0eFicTDz+e9+WHa/lBo1ZjG0Dhfnv9P0=;
	h=To:Subject:From:Message-Id:Date; b=o2isQJUVIHjJSkvLriHzLjfTSxGTul1/G7t2UZgGmiOoT5CSF1tjWQhRsE2dzRQG5yjdZB01rSSIAMY9CvCghQ1++eSw0S8vr5uf/lT6f/8cGBRve/yh5KQK0WfZt7d5rA+A2TmRB3eSJO9IVamIbzd53yTyqV73GMirc2+KOlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPAcBTZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPAcBTZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1441C4AF0A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720257322;
	bh=4I3Qgh9X8lv0eFicTDz+e9+WHa/lBo1ZjG0Dhfnv9P0=;
	h=To:Subject:From:Date:From;
	b=lPAcBTZqyXUXlr9A4abvcNw6AoKLYsrvsypdmAchQWJZz3lY4CJnU/5f5cF189+t0
	 /GJFcfgeh7r0+7ywy/aYddidt3F6cof5CudeE7/yCpYMoMrCDygPm6SmCl7w4nkbIu
	 52yIQZFP/T/cUC7quqsTCMQ0xoeOrGnQZhAk64BHyp8zALjS4l4Djhe/k9czj7YyAm
	 jVtZC4O6oOuPceJD87EwL7iXpe4JD6BB2zPoyUVILr3IXQQEs6fnoIPduJ6E3jNibX
	 V3GCdfwXwHqJgksDXlDb+Gjdh6D9la920qB1U5plCqzWt9mvpelC8NNi7rIcDBtMn0
	 2uo3EjvnzODYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10E0C38150
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025732278.16005.13554550710878003760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ab49d7fe562a0abfda0ac8b30e1a1b097b9d3493a5dc08fb92750132f0633e
Date: Sat, 06 Jul 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720257322
