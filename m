Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9B738CFFE
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779131434; cv=none; b=SHdLzmN3/OUt2+DFTJCnRnItJHGKF4Wn2Kbza+2ek1c1h/GBOSqVSJu2okEu7IOCB4LtNZ69r4ldHFVLg7OgUnaBvv6hZsZ/v+1nhEl2vPjzTdxONKY7F83HFADffRfrrohIxwQ0NGrhI1tK20CjiTUuVR+jS/+UFv9V0rOshSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779131434; c=relaxed/simple;
	bh=K4oOPwjeZB0RPaPEWDTXJVbo3dG74UcU2IO0kczHMNk=;
	h=To:Subject:From:Message-Id:Date; b=s8Hi0hQKRJgvwr09iOVme3Wx7BbSJYNtmVwRMO029Bpk9I1Yl6xhPdEXGHqm2XIPoFCWYT1LiUHA9koLS75OQhnLphZY1puHF6BGcgCwS0DDIEvO4www9UjKP+v1iUuGp9cGNKzBdq97sUPRHP+VW1QyO0oB7LAvTJxMJShyjzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfE2Oas/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfE2Oas/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF358C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779131433;
	bh=K4oOPwjeZB0RPaPEWDTXJVbo3dG74UcU2IO0kczHMNk=;
	h=To:Subject:From:Date:From;
	b=tfE2Oas/pXUGZJUnemrT6hl0GO9fRcHb1ELcBZBA7Nw4kySJQIA/Nk5mftmm/ojng
	 CLd1f/FYSnLpz9d/8y0xSIX3fuEKN7ezdRoOd19by2Sy2nsWLqDxuNyJx6g/UPL6vh
	 8tsFFX957bIDvXBvj6QbyNqzAXz4kxDVr2HbD/RgtyuE75BQZEQjMfT6f7YlAlgFUk
	 55OaiM2jqbqyofvS6z1BruYUVVGuIfZgsFLxjy+Wo7PyzJ4XwfDtw9HvDb5E5dmAeJ
	 eLKUfDd2QvXDtYccQP4GDXM5kRu97cS3DCqzHLbFc3+rVYCKzdqaLPackebANy79Du
	 VExxT5BMtayMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC2CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913143368.30984.8841037672650775388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2850914297b988b53dc81ef92d8dc4fdbe6631fac3dc0c382c7fb5cd29f55704
Date: Mon, 18 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779131433
