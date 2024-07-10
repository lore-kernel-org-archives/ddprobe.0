Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404DD811FE
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720622183; cv=none; b=g1lHFmY40mL7WTTTO3rhn3Kb8gw5Jh4NYXa6N586FEwNiNDNBBaFRXSXODTdButUd5djC0kqb/ijtqnJ+vnhHkcYM+yE7tKhSoFte6Q9hwel5PLhQfugVwhcU927GhYc2zvn8LhjJUnyK8bBix+Mh7vY1kEree2bo9Tq2d+dFE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720622183; c=relaxed/simple;
	bh=prb/t8E099Cv9CrFll3OVwQa4E2wAkCQ+hB/UMAs2Ds=;
	h=To:Subject:From:Message-Id:Date; b=arwLdDMKKLuW9uwy/l5/yWEeMBeQ9z3HGao/dU432jG8yoX+gObx8kCreS25sYgF1p4LCq6NQZPBp/+7UWQzTvYdsl7cgjvpQH8KxAPnJcQQsiSaNPkwUnlvyIde5pQI42odTvDVa3Qy0KTGfE0cBc87poy3ujcabXrYOWq4EQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhhZQ99a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhhZQ99a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1650C32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720622182;
	bh=prb/t8E099Cv9CrFll3OVwQa4E2wAkCQ+hB/UMAs2Ds=;
	h=To:Subject:From:Date:From;
	b=WhhZQ99aZLDUEGJ8lICuKWRq51hV43SMJWX8csR8/LdF6A6V3Wh1UElguThI7rxEJ
	 aqBZMtZDik9cmeibeN92Mtj9SK0XVsfk22yFKfVZoN2Zi7ZbU+10lpGyGM4IbekAeZ
	 yKR2dCHlbIbpeJbtYPaSsfhv+sgoOtPXFM92AYqIZlLPOhTtFdejG79XDooyf5Ac3A
	 GcT9b6hxaWGknraCIf+/oLSe1rDpPt2vqFmAoGhEU5aKzjIjiRdyrmavdWV0GHwBco
	 xLcR/HlccsoAEz6uLmZGaPwiqGcExtI+1kD/p1lk7/K3QFpEP8S3Stp95kg/qUwQCF
	 v5viK074igFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D68C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062218277.32604.4749607858693146309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83640562f587074751ea3177f3aad555e89b74feea6b803137a76e6634fd48f
Date: Wed, 10 Jul 2024 14:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720622182
