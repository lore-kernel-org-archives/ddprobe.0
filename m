Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5D42745E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748072994; cv=none; b=lah2dmtvfwpuCUd2byQ8Ok2NTkMook8dJe2qVfl1t7sAmKWL823sJEVh2YYZCBbgWeJ4jvGXwAYKlbzAzBAF5qwFYjs8zMxpSjy1GXlkNHnNOJ1BhSoJA/t5Y+mi6pi7wqMH9ETHp075NB6BB2VTQKjz68C11toRUoiLvEC1TY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748072994; c=relaxed/simple;
	bh=C4Bc+3tONTuxdFSKlTJ1DDnNBOMobz/EeAQE7qlTOW0=;
	h=To:Subject:From:Message-Id:Date; b=p2db4T0Nr3WTN+hcM8JlWF3621PMFhqdpH3bGcOuS8qjVrC9Ujljbw55EXjL60Kgt7edQIp2Ocf1XK5yd2Mz62TnRZDy1HBRj33LYZgbPYEq6QFLqKNkYFULrbDHzXdffPRzb3/Phl9rskRDUaDkkpqRflSWCUCHEoYDOEPTvHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlP5cjdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlP5cjdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C17C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748072993;
	bh=C4Bc+3tONTuxdFSKlTJ1DDnNBOMobz/EeAQE7qlTOW0=;
	h=To:Subject:From:Date:From;
	b=UlP5cjdcdw6A9HUXc3gRtfsBzczOAF8OwSxfwPDJvV2GKA85ycx6uQVWIwfbiksaX
	 xlMNDpeiVqTdDUrux7hJQpU5KCgwhrXTArxpkFk6IEKP2nZ2Pilo45S2G4QySgoP/G
	 Q3NUhk9C0klEsHw0BFiowfhtZj+EzcV1s3jyHXtxaDApFZ/wxTn6fSPuiHyo+yNK5B
	 MW7Lo79p5TCcU90huR0aIvVQvod2Jj0lDh0O/0ASFD2LODaiAHYT7X/eCAke2u1sM9
	 +TkJFxRFozrOieGHQ7Pk41Ue2VrECdUiFr20MkpLdUTJpJqoPT2keDRmNJdwp8g+vf
	 0QJJuaYX/wWuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E727C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807299357.27167.2176223968948527272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4e757be100e2397ea95a65df11c9cb8ff2ef6bb9b28ec62b3641efdea6f83b
Date: Sat, 24 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748072993
