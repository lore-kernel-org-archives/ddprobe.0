Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032BF78688
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708456097; cv=none; b=b15iIV5tkTSglp9BUJ0TgdUvnw8SMS1lJPmkDMsTekceW8H+kZg/lWJfdL+BVQW6/y85HwlJA/Q+aRf/CowAw75JRBNUbj0xCiSlCor0169788rNOAQOaRUgM24pDRAmK5dQLPEDQay9V7m1ZwBHh9MKgmVxVakip530LeuJQSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708456097; c=relaxed/simple;
	bh=E0g0R/efLABbz50c+ZgmR66zPrAJ6HlnqJ2NVgheNMk=;
	h=To:Subject:From:Message-Id:Date; b=I9Y4m3gZNjWFmuHYmdU7Fd99vLKEiNqwAQm7yRLdLXBVpROFPaqqZZY7Q0yRmSR3wf3qpY1CURyLsv3ouqfUq0jI5ErKAUUxxbVYi2qQgaU2SJLe9UhBmm1CBFPspog+6KqJTJhWIsfpwbIXcm1Tgo8W7YkYz8R7f8SIHsbmfRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsbQKhA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsbQKhA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FA79C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708456096;
	bh=E0g0R/efLABbz50c+ZgmR66zPrAJ6HlnqJ2NVgheNMk=;
	h=To:Subject:From:Date:From;
	b=tsbQKhA84oM4iUyjnzXwsNR9WzS+QItsCxZOkWvpJ9xSMfWazMdrpYOf901V04jYN
	 MOGNZ5nJEl/bUAmKb0MKdYSnbqge+CKVanKFDH0JaZC1/ZkywlMuZp9Kcgk6cnfqru
	 W7lAfS0L76DMRF7h5MltAhy3gZWYswBwiHJPuYoIZcij7Ly9HeaRIC1uwWj4cj34OZ
	 9JGjMyeO4WoKcMGNsmMdSjsZc42427THH7aQLHlVXQhMXmTYKddWxgUapt6f01mZbR
	 w+/OLQFX0hLJHDi0bRBCz/0guh9UyA7U7C+U402XJSMruvOA/4KOdKXoRPN18R+eHb
	 0pWyZ7FJm1lhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6F2C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170845609642.3657.3169283545532970555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5260d1c0e4bf9f7a28c36899d4f6eb9c900e76bf297b1b296cbc515679844377
Date: Tue, 20 Feb 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708456096
