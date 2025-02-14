Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38096487BF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739564334; cv=none; b=bWrQ51JZwtP/1UIRyS/IMXS+jBfqhDsWcwKYtV0cI3VNhhfh5rFuCMr1q9Kx9YukIxRWytTFlDgAPlhDqONpjI/EHxaiMr7RnwZcl8b8Fr+UyCeU54zUKHzIpa9hWt25XwtDLEvaFCg84EW6KKbE2Qp9kMOAwemN6AcZzU3ieE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739564334; c=relaxed/simple;
	bh=Cl6zDv0thn3KIxfnaAYezDIkQUWeTXn8O0f7Nf4Zhik=;
	h=To:Subject:From:Message-Id:Date; b=pWIBtx39yPo/hdByrU5ZNBzJ6EKh0lZrv8roJ3Gi9ACPfEHcOa4a5JDQKVMQbnTLlgToA6gmLSM0MfKNIN389SbaQSFaK7uXE/nRJ/YeBqQglf1svK92+CPgJO1DO7ZKNO7r/FuJ9TE2upbekAQLL7KSrktr7wQp45mk8szX01I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etAghzNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etAghzNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BDAC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739564333;
	bh=Cl6zDv0thn3KIxfnaAYezDIkQUWeTXn8O0f7Nf4Zhik=;
	h=To:Subject:From:Date:From;
	b=etAghzNPkhLwt4h4tP4mchnALSqrCD5KJUSbmbp2J4Fqap3727WcfO2i8srPRxQTj
	 vl3IG25BmPpqWtseK5QRI8CXWeU19h2pTp2aStV+9hbw5eU7O9TIpWgqypILPLhZnw
	 yMb0NXmp8XURIpJtyTMHQeFXb7Mxq/UsWS08i4SuE7gvovUFze8LQg2TCwUa8nVbvK
	 Gsh+wu4l0Xg6ueY12OK+JP+XAQ8WdsUL65VHQTjkmd2BBRp1KxfLL/XsudalZvAXlJ
	 I51f43SqI2ITl3IgScNsPZvFhJtU7crM1laNPBCXl8MIABJyRIVO1lZEZM5yvDwgAt
	 Ngnhtw4gumKYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EC9C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173956433358.14510.669468740397679079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7fe8d79b9e66a77fe71669895d624e5989d5257855877a1d6fe539b85b713cb
Date: Fri, 14 Feb 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739564333
