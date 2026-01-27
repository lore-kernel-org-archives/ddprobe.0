Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181C01DE8AE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769543634; cv=none; b=urkeayGxAljOkd9xryjmDF0BJt5AW170D/OfeHR7kNOtzHvoU1jU5UpAi8QHRAR8YkQbb2Syo8H27ziq6ML4Xw04v437GRplElzzqbnnAgYsrt7vOUMgoyjLeTaQX3LhzLxrf8Px8Q/3ar0voBLP3ol8ruMSPUGdopSSzkqeR1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769543634; c=relaxed/simple;
	bh=rCgsU3smX7kfWlszLLt0rEB69pRKSLhxDkw44Sqyco4=;
	h=To:Subject:From:Message-Id:Date; b=oVjZ6h/AkB287hqxnrBHXfmPCUUwyFt/eZcDuXQQ/IFIkDzjMUwgZelN+Lszzw2UB6bVqINdUd2FfOAq8o7u39zZ63Ijo9cIC9bwDu2RRjNjaz3FZL7wjCTblglb35eWPCw3aX5rlISaQL84REBG6ptVePWW5pIMzgvMToQ8Cxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs5v5kil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs5v5kil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4548C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769543633;
	bh=rCgsU3smX7kfWlszLLt0rEB69pRKSLhxDkw44Sqyco4=;
	h=To:Subject:From:Date:From;
	b=Cs5v5kil+yezKTBstdy5IeD+NaHIPeyR717VfcHr+IBM4RB6cXfK5DVh/t1/f0n/h
	 ign6ClMhvTQ29FqiIJX5B6Py0XDdrN3ztBGTtfgP3CT1ybZJfSLONEmkKIl9wjvU0s
	 NAGHrLaY8PxlZAye9BHKh5/HFxuOyBM8X74et17iODgVagki8S2Ml47h+qUHdEDlI1
	 FhkTBOlDaeT9TCIWlepMoFEgPk4CIQja/8BodxhLY6DT0SiEgOtTuFz+3gqznGeNdv
	 l2TilFyuHDHWDxWG6opyRY5z/O9s5BV1JL/GIm+XmEJfhMiK8aC2Fixn8UKuESWwy4
	 n9fZej25yK3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A0D2FED9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954363360.5840.3196064682615955664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cb27e54cf21e0df093843a19bcf34d0ecbaf3140dd8a2c59f089025711920f
Date: Tue, 27 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769543633
