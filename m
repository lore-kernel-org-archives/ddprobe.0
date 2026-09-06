Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D15C4CCDEC
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788702634; cv=none; b=To37I+/87PNmhqj4dNkxIAkHTDALQlZOJBfZ7x48K5e7Vaa7d7GhIftPJQ/qYnd8UeGir/CiP5mruMQdq1RrpWCEFAF0pZkFpwPqGUJFsR86LlFCKuPhHJuEZ3eIzeliTTBGk/wZ/5gK+mn8LG/ICcQKPCPMczVU1Ylhh0sqMW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788702634; c=relaxed/simple;
	bh=HHrWVB0Z+RHnX6A+NoLT3Xbu1PwOkOBK+Gepetk/WjQ=;
	h=To:Subject:From:Message-Id:Date; b=CnLNLkOrC+Kw7OxDR4Zts8qHY5B6rxgdLmXah1ufevSSL8JC/ry/rmWlyHwiuf7ciSfcoLwf7RkEzzIB0jE+cQy8TcYw8p0qTQuuu9JYthj+S0wRp2uTFq1KGx+9DrKlyxqBmOLakfzCHGhgUhgbvS80Fz4VkptIaFxx+5C1eM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qytc3fLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qytc3fLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE817C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788702633;
	bh=HHrWVB0Z+RHnX6A+NoLT3Xbu1PwOkOBK+Gepetk/WjQ=;
	h=To:Subject:From:Date:From;
	b=Qytc3fLVGYBfwwz6PCFvXldURDv3YpWhA1eYtqz2K7QX8jAgRpV3SJxdBgxfeuvw8
	 AV5/ACRF6kTrAWt99lXv0g508qEFezNpxaW07kv7Csm7mAjTbu6HVTtbLr+HMKDoe4
	 y1/PuLswXEXpK1b0tAbK0mV4tpAtpPvymPOKYPMTjclj18kyylKgo/E/BCeJQeDZLR
	 SgPj4JUHKYqaIm7d6b8dAXvPLyIyGgZQLPWeVwcK/kreW+kzCK72EQlXW/0871DwYH
	 1hiMR877mqx8Yb1k8+N2rnirVI5kW+0/d3mf7nS8uEMYMf6v8qlI7dyNX/E4KQONRB
	 LfpVciqy6hGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5317C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870263370.17207.4247981066166970198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8629401a9cc4d1d8e14206f0f87e78f14a57baaca7e5af32a14401e70888f8eb
Date: Sun, 06 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788702633
