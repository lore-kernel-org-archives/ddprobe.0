Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4306E291E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742771994; cv=none; b=sSEJ+gINgBNXuaYfrekxytqkM9mICHkawXDcHgUzYa0tQkAbS2evQbzpyWR+Uv26CUFRvj3hTWxafzaDP7vsDs8yrD6jWpS9U37kMLud723NmD2qpg/d03hp8SvXl1Z367xQtd7X26Rh4piAKHWGyL/ct86Ldb6Yv3JeUSSDihs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742771994; c=relaxed/simple;
	bh=ctW2ALKpxGQ5zXTu0X0rm22UTdQ9HystiX+yMNio3zM=;
	h=To:Subject:From:Message-Id:Date; b=q3dhMhFhRqELtncBge1pEFU8cAKmtfNy3AdFWKxWGDtHBktgz8qWw83PYRAq2MnWZ9hhElZEuWB1q6gCs9Qt5mDuiQbW575SY3kiT2rbrh+01LuE6Mh2ZsmSmrymExtfXPHHpn9c4Ur4SMpoaZBvWsw3FWFSqJyBu2lpVMddFXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpwdPA9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpwdPA9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EC7C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742771993;
	bh=ctW2ALKpxGQ5zXTu0X0rm22UTdQ9HystiX+yMNio3zM=;
	h=To:Subject:From:Date:From;
	b=NpwdPA9UJ1WCuATmbILBtCMe7V9TkaH7FYxL+kZzZku2omc5HRzdCgKY5LqC/4cEp
	 t31pdk2B7Un+/54eXmScJZkGeq8H+7MJKjkt+dE8znnRIrAhp1m/6Rz7Guoox39oPx
	 Jyr3aIUJcDbERXpCHzPEYFhAi0q4SMVHdkF8qnKmpu/H7ISzKtZxCUuIb7E0yNWqD/
	 hNqhB+CAEfIXUiMRzEiwD5/Wy0FGU3MtyWyFyJ5ZwI4yY7FBHeLBHxRdGqpLD+Fcrh
	 FRhVUIR1Ah9ZGvw4ct0FgA1U7Tyscarpgn+Vaik48ZtVvq5PFQAwx+OUIBjLUWXLtk
	 IgXzDgAIL3W1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB1C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277199358.29201.15684538753576029459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62194125378b6e4a735c2fe5d0e431254589e478393d7263aec513c9345c9006
Date: Sun, 23 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742771993
