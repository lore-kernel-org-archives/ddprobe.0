Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19198291C3C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751528394; cv=none; b=stQ5i8kAsL85zQm1/t0UxKIo4VVrZw7F0NBqK8fjFgO1yv1kYZ4ZhADrpOjQOMMgo1NmukUUsxn9kVIz4DNfXf9tJ1B2hP5A0RCqkrCpaX/T+cicCEHgc1CoV0E0i+Tl1ZUb/UYqSn4ZHg5Q+zFDsNZagOkKDAaaQSF/0xqZ558=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751528394; c=relaxed/simple;
	bh=c72Al3gGkDxH3rS99dCrmls6uwO14utnPUWvmbn/KJ0=;
	h=To:Subject:From:Message-Id:Date; b=Lh9JUGBDcfxLBYUwbQ3XZgMSUwujCf2luIVfT49bTkDYjqcmOij6mjbUSfkV14v+eEhAVo+4i4O5KfnkpToqxWd3eUymYx1sR4+YHeL40FVyZAvP8CAoKj6KO1BrY4f6faaqvWNSxXbBW38BCdgpUeB/7BIkoq8vwLhmUFpezxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDVi1NyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDVi1NyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4F5C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751528393;
	bh=c72Al3gGkDxH3rS99dCrmls6uwO14utnPUWvmbn/KJ0=;
	h=To:Subject:From:Date:From;
	b=HDVi1NyO5WqyTAFEEnu4/eCn6LZxtBDKMv6aj6FqGj/D3wAOV30V55EutdZMKecMj
	 2hcWC2ao8Dpg+3HMTXyPfvGiIIrPiEz+1uel7s/Ct3qriv3cEhWijt4deb6ppM5kBn
	 CDnnJVcmdoLnzvKZWDiXF/VMaItbFt/kHnPkJ7n3uN2L0jiehgQ7HMadeUXXWozbW4
	 4WGvVsRL6YnqSASRU9IvD15s46haqEK0W/TRXMMchgKtP9CKkPN3gh+no+zO535Dqc
	 7ps8W/CNujdkt/WSIudFyOdYKMKHgMtCugFnONENc3X9CBiZVUuu7zxiFEnqq7YPaJ
	 LfPOCp00pvIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC0C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152839357.20344.2310734126531686193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225e07b18c109087a9206236564efecce7f42a112cd0dd9f65d1daad85d24a6f
Date: Thu, 03 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751528393
