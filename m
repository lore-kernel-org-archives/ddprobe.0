Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA252857FF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752163794; cv=none; b=BGlPApshHdUeEzqg8xxsmuKafQPITo/cNlWvzcMQjmw66QYcdsPnWBxE90SZX/SW/nsrbD+X0Y4Q+29HDX41n8olZQ8gxGI/PlN+/k3BHBjwefimiKgZpqCzhM4HiyxE7AKbvYK3CDPqL/UvSMIMj1J94steoCNNLw4u3+XsdMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752163794; c=relaxed/simple;
	bh=FG4wrX+Or/1k0Erv8uDednxO8ioUF19sIuBtK6/1Xlw=;
	h=To:Subject:From:Message-Id:Date; b=Jz2IeWqBh1r3heexhi/3LeqK4Nak9mc3MDR7Nvz9H863CFyEy5VH20Vo1NsxFlG9gK/hn8wj9Pf2cP7CxmeWi0URwsFmsz/+GM/Vj0T3K0WhQXXzP15knub/AhB0P03pdC0/bodEZFRWiClJwTeNbEtiLfEzRgltXOCxM5wGKT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sl3v+FwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sl3v+FwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1099C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752163793;
	bh=FG4wrX+Or/1k0Erv8uDednxO8ioUF19sIuBtK6/1Xlw=;
	h=To:Subject:From:Date:From;
	b=Sl3v+FwHhl7C3aW5/ZiL2BIRHBqvbmUVZe0XUpZPyLd4mj25kPYX/qgcE8oMfizMb
	 NmpBJUCJR/ImWfRBWhCE2Hw2npmKLT0UowVTu+WRO4Sru/qj4JN5BLb1ZCox1rxGi0
	 oG+F1F2J7EdD+HCYDIbwsXTjXpcKnc/PwBcht70entWnvq4PBrzXvLtdYpFMx45bHA
	 VLSIGQ5sAkCq9oFtSCJEvvRJtmbPYympcLurL8d4c9kDcOFolWGbT0CuiT/fhui7vw
	 3B4mn+dO/k9tSpICK15cS02PFTFgSmK1koW48vxxRKsCvKRH4s2tLy25lHyuzRX+8g
	 u7E0EL7RdPk4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F236C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216379357.23470.1035022523609610200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3452757121e92f3ddd5399b157d15697a958151ce15d79a613336cee8628c4
Date: Thu, 10 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752163793
