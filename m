Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EDA32D7FF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774187093; cv=none; b=ldJb4Ea8lgPWuqo1m7Wbl9vrdcH3TIEgXivOfvywj3L/QQHdsMJBLpDhhYqNPSi8eSvK+RenXeJQ6Scu15tWoVAo2nsvNfN3k26kpd47+gLRc/pIjT/UHmWVYNcA4Xc56ZquU7vT3g2JOhziKwwVN4MK7A9RR/tjLt3M/z1VR7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774187093; c=relaxed/simple;
	bh=i+tAHZlLG2/Jn+Y+nMY6OBkuqMBCex4+F43ZCad4ugA=;
	h=To:Subject:From:Message-Id:Date; b=A51agDEGDYZAFbBaH2vrTAcuPS8D0Bkr7gbLkmFArl1iNtUggJZbB4J4TKHFx+5Xe1lgy4JktpMbTMExNTOWG0TFpwX42OkcX2M/YkrUfcO2m5TD75dIVMHjczG6FhiRfF3mhOIQpDwnU1vKJvH+sQlAmTXR+CnGNQOeR0pyNOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc8aTVLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc8aTVLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25BCC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774187093;
	bh=i+tAHZlLG2/Jn+Y+nMY6OBkuqMBCex4+F43ZCad4ugA=;
	h=To:Subject:From:Date:From;
	b=Lc8aTVLPWb/Pz/gPQvcgReR6F0Ch88TeOklXnKri/gvuVgQ3b059qxTN/sR1SiE7W
	 YK1ejtFTgyFusObTPGRXBjhXoGZbGfHFjfKsRkmCQmAFtxqoo1E2ompnPNdEVTnGEw
	 FXyhrwrNR8h+ihoRreyrqBLHzCp4gFWkWOoC3F/q+apfwuk7hQwXbE6wqWRg5TFrp3
	 R2xk4dBXEumcpYsW6O/jP/04eYXacQySDNlfa82S/+a/1lharnd1NlCItwt6Y7CkCM
	 IKTIL5bFshnEf1rDtLnHg2E8qvmZn21Q6oRXENI5kAFlHxr+teI1l4HNjQAq5aA5gq
	 +XsJziTzOKLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5D3FC72C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418709363.11122.2705289389629675046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca875bb306120b4fb56b11eb2f706a4d85fedd1e50614b2819ec4e15a1e4967
Date: Sun, 22 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774187093
