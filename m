Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5646C27144B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788586234; cv=none; b=K8u7VQlUUlYC5RvdK5yJtCdcSQsC0ZzSZDvc/FdVdle0/GV2iqid9l1Trzwdjx5vNtBvKoNcuZFTDxf/Y3apqMhSU+LxiUfp1OA2FO7x6ZwVd/GnyNrBaHTSXlt8Mr5e+Nl6ynYbwD4aQhK3VcjLuCe/dJ4qdsX1gs7iL8fob9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788586234; c=relaxed/simple;
	bh=LBuTQA6pJxryZL9NteTYA2pjTDm6AZi0xyiZY9twfl8=;
	h=To:Subject:From:Message-Id:Date; b=MH88brHpAaveRWtbBp4l0hRPtY4H3anFy0mK7OFDmJH0onQ4X0ElwIZzSYEct8iXEvz9jsGjtciwIL95ZSA7pwKsxEHGtjYlcf/q1bLoAZhFUg8DsbP25q9m0BP9/1vQiVnRY7rb+sEYGrd7UpIoeNLrryWdfSmvBU7jdLcnWyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwSVuThW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwSVuThW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83BDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788586233;
	bh=LBuTQA6pJxryZL9NteTYA2pjTDm6AZi0xyiZY9twfl8=;
	h=To:Subject:From:Date:From;
	b=GwSVuThWsFbkuoOdACArVJaA5B88OUKaSh9xD/Vsh1TsiSCfOUsfGXg4mGzzpwFsX
	 naZCPOIFFtwNJf/u39z94TGb4Q0GSZw48PnmhrvPZM/ybHKlNA6MC1gNrdcSL36W4F
	 z/OqD0qPazV5VmbBQLwq9nxmWP7G4Kb8ITHVwmjVq1xIvhI3gbDn40tX41q7vzlfKT
	 moeHndUXiQ9UuU5V7ifo3s73A7r2CYa5Sr8+z3x6p6EHd7hSfcrrY76lbrgkSJRARf
	 ZEPABDTuTPGmlKaJ3NAhjCp7sVwYYGyJoVEVCZc33BhgA/6puGrfn2Sf2UD0FtUuES
	 K4rrFKfrByMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52D2C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858623370.13311.15838558410307438088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b7c9798245f51b5a6170d5fe37ee8fae34b1a5a74847bf81e3dcdfc9d9afdf
Date: Sat, 05 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788586233
