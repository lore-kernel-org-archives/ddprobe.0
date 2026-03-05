Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10FE23FC5A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772675094; cv=none; b=Yx+9Xg+h0fpDXamnpeuT+kQD/KiuHXZ3Z0aytB9GpGPkZJ0OYDw0qTNUPlYoMQfmHe2YztjL1fZ7qQLDaIjThwNy3gjpM9wFwD1d8q3BRCeMPztM8OGfLnjJsd1llJ7d89Q+o4dGSJ9iIwaQx6+V2T4/OSbcaYVD2r4rpXNMS0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772675094; c=relaxed/simple;
	bh=hUK01LCd7S6dwhLgfkudb2r7INAm8Y7+TlLIoe4Lyj4=;
	h=To:Subject:From:Message-Id:Date; b=YT3gKM9VcFzP0SC74AGLpdt+XkcvKNwDI8RKirDLuGSwNhx3JQDb66eIsyCc4ccgiEwxMwIyC5NRt+X5Ds/VeQcmKXuBzVg14ZrO06y4v1EXp+V2ffOuKH+3gVr0PRgmSxjoyAyZ4btLo9g0+5q2R141ydkBnanh4ou9cuvQU6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FET5ZuKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FET5ZuKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB66FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772675093;
	bh=hUK01LCd7S6dwhLgfkudb2r7INAm8Y7+TlLIoe4Lyj4=;
	h=To:Subject:From:Date:From;
	b=FET5ZuKdrRAPi8PIv1ePWDOx8cQmqnZEn2tuRadH6gRko6oGna7IgFnuRmAhzqiJi
	 KjuJq1kJkX6pEBr6Sb+s09GGkcJfQXYJIGayv/G17d6ioWiu4A+fCp65+MthcS5NZ4
	 vcFwZy++cTKfgyQeuguRCJq9c/NcbpdQOVYF/ExiLbFO68bWVc0e4FdLesmob676dY
	 vURBYg6bHxq23wuiCkZVEBdU26c+Uo2nv62BPK4kph00sZ1mQHFBJ4fQ68GailoBFc
	 3hMPqiNVPmCV5/FgDibe1G2qmBUJJlD1VjrdmBn64EX4uih5Ldr3aXn0d56FBYnqwc
	 g5nHu1VIAZ0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6C6EFCE57
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267509364.31384.8390691188501150098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b58abeef4e7cf6fa1dfd0bdc1b60b3f16bfa9df5222daa473f919b0b2fe471a
Date: Thu, 05 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772675093
