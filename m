Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AFE38E5DC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778368114; cv=none; b=VCLteJc5CmhIeAVBQJYapQkzEF6fv+aHvMDDK61HTipNeYWQcotB2+1PE8vKGF7XFTwLC/Khdd4cVq7jQ87dfuBGa1HfGKB+Bjj5B/uyu0dWQUfmEXAqZe4t3SZGf4r2eRL5PA7xq/jOe54DHo2GcBZuB4f++JXtcCxls01b4bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778368114; c=relaxed/simple;
	bh=lddfUggq6bK9/9X8SGQjLSjLevMl615nwP/7vzWb37Y=;
	h=To:Subject:From:Message-Id:Date; b=FlrkZ3H1coVE53xbV/bjHMUWznn1jnN4BJu6fHC/cSIGmo7vtWpoLQQoxiXInOYzAswLX+71pck+2gCZjvtB5W63zB3duIibYxInqXcTVDhr7GQvDuic5yNk81krirT4ZaiLp14Y3pFXCS6bP7eYZ2OOWK/uRBhMWFGG4tpscjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eatc0Z2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eatc0Z2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74D9C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778368113;
	bh=lddfUggq6bK9/9X8SGQjLSjLevMl615nwP/7vzWb37Y=;
	h=To:Subject:From:Date:From;
	b=Eatc0Z2FdKcAEfplzHpv0xW0wXrBam9SPGmF444Ww12pNxwh//xWNayQzVzCRChyY
	 ZSe4Vj72U221cLCGKTU53H7gpGpztZRbQBPOz8HbNKUHPCrF7/pefvJGF91umxYhi0
	 5diE1Y5OcLIrVpmUrp6xfitpzPP5Vfps/cBqI1wUR0t0BOy79yLk8ZFSermP0soP4N
	 h8loUmZ0Z7/dGIsl1Y2LlLUKes80eH36XHRlhC7lUN7kYjI7FqaHGFSAaWwbIYCK1O
	 m57zHz/xILqb/vEaJzLF7ourqUPT6kNx+ns74mS+80S/llM2lbl0cIz175t6LX8ohY
	 hoklAyzugAOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A2FCD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836811374.24991.8344849486850647642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a827aa95533c06d30d008adbf57c15943997a45dc4af790b199146c4803a069a
Date: Sat, 09 May 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778368113
