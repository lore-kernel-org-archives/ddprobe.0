Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054A1FF7DA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736459754; cv=none; b=NdR03aQzYdsRuKRSX7XOn8GKoC50xVpn0f2nzXGx7apng5BHiDofe4ilHJgpRR0/uVjisxGh0RVuXlqjsz5Gqfsa5SSVW3WWAxTeQsSzMjNeWV2xPsdkLC4Q/IcT17JHzqlwp0N16VTnEYYZI2bGhiakTedn4xV+GgWDmYbO0mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736459754; c=relaxed/simple;
	bh=/Ea9Pxz8Wvv8ZlECjR4ITYfvZc5JxmSKWQWsA0DC9b0=;
	h=To:Subject:From:Message-Id:Date; b=mPhMa5t5tXI14wrnZq4CxEo2vWoSpPb3TnCpSgI7Vk34UZ7ThsVnc8caSA/taKaccyB94BzGqWLHWrpDtRtdVmD5WC2IXlXgqBmDBgDiJtXZyIerf2xaAuABtJmY9Yg5EZrLpRLzID6QuufL3uRqD1FTWtyn4KD8o245K5udM1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt32VwIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt32VwIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA354C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736459753;
	bh=/Ea9Pxz8Wvv8ZlECjR4ITYfvZc5JxmSKWQWsA0DC9b0=;
	h=To:Subject:From:Date:From;
	b=Xt32VwIHe+98pXK3uNzY31kFxJz3C4R+uhma2W4PZt0am/sKSA3BZ/WNUYmhVOMNR
	 sMf70kbSf9QVu/8M/0BTh4c1gjpcWz7+B7deBj7XxyIpJ6fq3p+lDUwwgneWbSZdFo
	 PH8TWTdggrpmyrFIE5kSOjiuTtyRExLxMlf0DxNXd5nHNVsxDaxsQd2RCGPpHSMZxE
	 r8hefJFC0lmHplNHfiIIUntnb7Lx/j1FVedEp8BEjByKBNl0et63JjxHHRIVA7VfhF
	 HLm5k1olJAF5y/QsoRCzQbb+CKNpWMPacl16Llj0KCMoJayxvFxz8+hCcUSRigc5kz
	 ayljGkzpSGEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974CEE7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645975361.21937.5844230529427561822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7e784a37211c22a7881855b4db7a60fcd78b2318bf915122f30e5ee4d73eb1
Date: Thu, 09 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736459753
