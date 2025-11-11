Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0254C2F12A4
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762859394; cv=none; b=pQrPNDXQGXKEEGESOuu4b9a7GluEZrEUJoPqrzkvqsdXzntSgslPMKjZeCEh62+QwBW08OhMyXTnhdahBtNvlNKJ9SfeJIzkjqI7U28rUuZt5asapNAHG7CSfXxpIPg9TZqT+zxiR0zqFUleLU8zrRV7p+8Ze0Q35obS06lKmG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762859394; c=relaxed/simple;
	bh=1cAIQrd7zoUnSRMwF1i8iXGkdz+1GAU3QZuHoEFXRgM=;
	h=To:Subject:From:Message-Id:Date; b=Ufi8WKltnydqH/UgFGJuDX5CQWsKh14nxi0AlvvzqqBu7HpULJUzKFiAdjem28XLXU2Kaq+NfZ7MozGFtTwn7+0Srg1Uv9cS3FOjlmMT5Fqg6I/B4ydr+RvJP5DFzCXlzZfaSjI2APiQ51aK1/fp19uRfe1S4cIfUGA1fYxShG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb3GJPOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb3GJPOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98FC2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762859393;
	bh=1cAIQrd7zoUnSRMwF1i8iXGkdz+1GAU3QZuHoEFXRgM=;
	h=To:Subject:From:Date:From;
	b=fb3GJPOy1yQYFDe97jpb93snK8s3r6wr0jXk9A1izPp41sMRJnE5Zh14wkhYP++p3
	 xfwuAPXOfBPLgyQyCnfjgTKQ+tyNI8nx9IY9MNaziDwSYgv5dBQNQG1HGTLUbMHRiB
	 LdI3CWTEKYS04Sd4eLLfnFG2AhRQ26E7ka/l627RtEbyLcjoQ2+bc3l1OcSOgGlqk7
	 Xbl672zS22mv1GdhJHFqEPgzbqCXMZmhX5K8RbGt9GanSWl/hChm6p/c1gz5GdJby8
	 JmY06HWcqxeK4M8slf8Z4Hykh2/NlTP9tijHhOGtRDpAxwBQctxq/poNgiDrncGqVV
	 VUa3C895Q1ulQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBECCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285939357.3543.8012537644907185469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d41d1c33c865af9f66ce979a4cdc28ded394aca6cd0c07991c747810a3f822
Date: Tue, 11 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762859393
