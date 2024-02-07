Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101A97FBC9
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707320897; cv=none; b=G2Xx6pLOD1d+dh5VEQfsT+wbR5dv43AwJY8hs+kMu9XIzMOGq5kNiDhRU0li6cXudW2cR6EElQLMKiHh+LF7M3p/9wfh90lY9HvOvrte+aDDQpVFZS4qZX3INHEEyZwsGxvQTVtSksWJKD0hP5yhr/dSEky15BYKFPGGXMKj9oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707320897; c=relaxed/simple;
	bh=Myt0xDXDnCBs0S5ApEV9fV5bQSwm9WcL1nf9P4qZLfE=;
	h=To:Subject:From:Message-Id:Date; b=tY+tcUJ5cdXzQ13YDT2Cz16/yH9mxKACF1+rDymvl0VGD9VUcC5QuUDwgxvYBD35wcCyK7vGWxm1Sdq87S18wr1YuK5fI7MSkoutsQDq8rPal8JayHH5PSjFG2J0RfKhgo2IRIkwYdmzXmTH7lO1KZVUnGVJAEbg+rXf0yqH32U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR594Nm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR594Nm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF74C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707320896;
	bh=Myt0xDXDnCBs0S5ApEV9fV5bQSwm9WcL1nf9P4qZLfE=;
	h=To:Subject:From:Date:From;
	b=dR594Nm3ijpKnkeAwS0nD2BEncPEToMKJkcKhUmSieWBFfbkcGy7Gi2JwFM3vHTal
	 rDfxe9VmIuuiuDbf+WadWBVQ8y9Ina2NpS1+Pys12C+Lmu3sJyVurfvAFCwL3SKFpE
	 UBaXGyOxNQci5fviACTHWTMChz2NU3mn6iimUo9dvE6HU6xP+SrfWjtXBiY4E/9xVO
	 sowF+0nw1/HPabRjvM91N8nzli06gvH7+b+dIDMtFM0P261RE9SZ36UV3p9mhwoEER
	 ccLCALjqraApGRmnuZw0bS0NQliDuaNt5Dbqe3PYgeThtdYx44aJ8J4Yw5t5xwxY9C
	 XCMwKA/o0CU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CEB8C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170732089643.29214.16799228964456670198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38adcaa211c7c414f41591212c4275b33d58b073ba36b0bc61ac7dbdd4e30147
Date: Wed, 07 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707320896
