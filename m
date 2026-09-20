Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C8236E46C
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789915234; cv=none; b=PUbVM0Yu7Nu1HYxBkNcXL2MK8WAZC0YvDQA5Oeh8E4JM28icD0s0m1PCnvmjnfrJc3fvXizIyB2PWELR4L9q+mdif3IVzD0rKB4tA34QYltYBsGq3uz5Ljf/ku+IBhpgtEVCuGp8aXpm9kSPvUR873mcAROO8hNXwxLpmTAa6j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789915234; c=relaxed/simple;
	bh=hJH7QR+EKMnTyPUuQsGt7eW1PVMiP3bLq4jwur7LCD4=;
	h=To:Subject:From:Message-Id:Date; b=UoxHqf2ddFbn12LWL7lEPlhPNACAkm+yys2c1mjlCW1Lqi+ddB729SoZ/zsaf8e6X3Bi/ypBXwYPYY2congfEMTbPbBJCbW17LPmCXK/7Fyd9zpSGyqkEZvFD/hRZLZ9eJYxLJADTFUvtcaKvjW5p50FGkfr8xhmBeiTFVS3brU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6kLA1rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6kLA1rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04A5C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789915233;
	bh=hJH7QR+EKMnTyPUuQsGt7eW1PVMiP3bLq4jwur7LCD4=;
	h=To:Subject:From:Date:From;
	b=F6kLA1rkY4JbWrduwKB900GoKaUNTWLWk03z072mP9jKRpX+dZTNu8rYLMztTqPSx
	 q8FodCUWWC2t8xxkzATJ4usKOOAfYgF8FGgleyluni7zxVAmAxhZGWyp/vAyq4DXQ1
	 qlbxWO8ETX5njz0OW1wUJb0Y/3epc48j5PpJPmNVAThqhktJ0+RC92aZ3uGw8ie+of
	 ELq0LgItnmsuAfIBXvat8KlWXeQ4OWjImz88jNon+rkynBU/FMIaK0TcIEVDtYTr71
	 lDbvblvaNgeXYgyHHfTnHnIODuVK88y9GE5dgbRs9XDy4zvMae4IMcdnPiYCkQkZe4
	 ghCFIvIcuRxbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFC4C982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991523369.27947.12783303627576357196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e4c11106014670a679697884652a6dec3122548d1e1cb1802ca31dd5043c0a
Date: Sun, 20 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789915233
