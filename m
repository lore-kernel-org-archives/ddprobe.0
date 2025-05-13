Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2C62BEC21
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747156194; cv=none; b=vFc+Q7eio+iTy58wmmsEKfE/l2NfcqMUNiiYr9AK0OZeHZNVNyDDvv4rE2qBbXrRawhrBw+W1tX/5MeBeqdZDI774TuGM4SrjB5u0uLeKHU7pMwpgkTTylfygZ4sg/wfNdca+EY8zz0MB1aDOioyRd6O6dv2+oWv87sIKf1iODg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747156194; c=relaxed/simple;
	bh=aGn3As8IcwZY4ira8Nt2ggjQANBdCzGe9KL2r2uqPGs=;
	h=To:Subject:From:Message-Id:Date; b=U4dmr356hgN2OZRb1vB35CHzdGMhuKKfKL3JjM9UcEcYOu/0Hl0JvHCUErk1MZbPxQZiCqALvC6w3kzmvJGM9Md7UuYUCcOaZuZtmBjgttv5usTvG23kp05V/y++4APrcJYOmlyDMBNuFrvgUBVgFlUZUGEtrF743b9fWSoYTzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeWZ4HI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeWZ4HI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747156193;
	bh=aGn3As8IcwZY4ira8Nt2ggjQANBdCzGe9KL2r2uqPGs=;
	h=To:Subject:From:Date:From;
	b=eeWZ4HI/a16rSqBd0akoXCNUqhzpTPcfDJuZ2reHzKH1CAawkZrVx502oPLUNsS9D
	 65zxRVi23TrLwV/hGKZ2w9eTHhhllM/1MAJvyO1lp05GgZ/exFes8bYooRR00Nn3Dv
	 VoAyc+GTktnmatZqtsYILKNi31dAlcvglErPBYGipMyi8qnVb4DriLHxOK71U79B/I
	 0QHEGxuPReK8G9NblXJRy3Ksw7D/9Drhn5WhN3pPBAu4q+xctHBC2pR0ZJZDjdVctN
	 lgU6xEbBKMy0KlKolQax8QQYxNyvG1UkV3//0+sbP/y2uA7UOkeNSXgJPvxyAEcNnx
	 ZO8abiSPLU7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90448C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715619358.24664.7113527935410336605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82eee32efc9c6c4053605cf406b5b03562948b5f10e9ed6d628f7e7d4c186d32
Date: Tue, 13 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747156193
