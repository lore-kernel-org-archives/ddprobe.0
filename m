Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DB82836A0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784100514; cv=none; b=E7VRw8TmDS/iFg4tXCWA/sJKh+iNiuv22ps1myWmMnHeYBaDFLEtmbGk/HnZRosZ3GM0Pi+pfz5bQ9b23IHQ6RvIW3igjrcXz0eoPsw2WOqpKnU1EamAMesJkK17r/PPLdaJi5B2U9m9EOmg8DXiO9GxFBDVexBub+Lr9bsn2yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784100514; c=relaxed/simple;
	bh=Jow5Qcm3br5k/WwbOgxatLCZ1G+hpbHF9FLAPjN7AXg=;
	h=To:Subject:From:Message-Id:Date; b=TkS4h4AiTP8LPrvxpvTvzcp8iANiFgEqoPqEOl0GIK5bWrKIy4XY7vH8DSk74luIO0BNPPKwSFwWV0Ehc0MESUdfsnucU9IeIsoemmWUv0xLLyT1QJ66JCzPkSgZ4ptcctgOR41mfHFPNL912HO5BWPnk6uaF72xmijouSePbwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdt9iJ9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdt9iJ9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21E9C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784100513;
	bh=Jow5Qcm3br5k/WwbOgxatLCZ1G+hpbHF9FLAPjN7AXg=;
	h=To:Subject:From:Date:From;
	b=Bdt9iJ9qmLb0LJD4nYZ7L7GdoJ+FGY22rc9YcZsa8+OkomTEvq6RibqbsPz+GjRzp
	 YzBc+Pd7j0a2p7/LR2VxUIckQD73mdwhqtG44VbpMRgWq8Y266c/0+t5LqVMPLAoFE
	 9hWqOBENufS0+qe3aVEIy1zJvzQTewi8PyUhaqOrI7ajMK9nilC4EAS24W6Est0W2M
	 /vrasNpfDqK2qlGc2+7g3kv90m9CR5+y2Zc/MimK8S/5Sdk9fqJ9hJQNUvpeIC6q4e
	 uRZB9IqRPETxSPtLU58plQuErUqMZ4T0Jq9b1Y7X42FXUuMbn3TITw7eOwJ22puNNV
	 QFWQeqmrdoWQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE96C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410051369.4228.6411544353006739063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88be97d9d3146cfd6c3b517fc22df18f986a1d39af87528ebf0f66b075377dd5
Date: Wed, 15 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784100513
