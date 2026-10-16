Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952053B440F
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792120234; cv=none; b=Hi3Q+oc+h0yTiGazu+LZWnO0mR5oxU1BtmDgYiiq15ENfrzFVo2LXdlWBdtUbJS+Y1qiiRmCrjZndMMgIFxard15TTKB2FpWuDGYUjEQZcQxKrJGLKrd3SeWHrojAjNxBo70Drky1lSIHmGg32y0aXFAluPb300Nv8+Xe+jt9qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792120234; c=relaxed/simple;
	bh=q5C1ddmutnI3AJsch83MZbMkWYACvrajnG+CwWlDZNI=;
	h=To:Subject:From:Message-Id:Date; b=D1cOZ4gvchBHfUcPQt0ktM2OKQGZCmPeceHYINjfdCimtwcAOATuoLda+O48BzvGOAOZAL21SD2Wn+W6dUt+w9cDPMLhifu/vsBDEPY76Qt1bd1R2g06n69AcrBzkstr2RM5kw+4Y22Lez1oW+0aMKvS27PVjfiQg1VHfjKNUv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMKf0sb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMKf0sb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB987C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792120233;
	bh=q5C1ddmutnI3AJsch83MZbMkWYACvrajnG+CwWlDZNI=;
	h=To:Subject:From:Date:From;
	b=dMKf0sb9SQnj/INFNirKt7FWNjkHGOLhL+JzRyLuJ0IliMC5MjXgA+l7DWyKKvJEi
	 ONb9S6ttYsLypP8yCxIIEwH8/YbrkmSRY8DgUSEzUAi2assgLODuHymrlyNDgyVEp7
	 6VzEo5562vDGcrEl7CgWSuxlaYqwCtG4M1lO0uWR4eWdMYLoaX5/GTqtYanqeDMzfW
	 krh7At+3VWd4hU0MQ0nKc487yXKfhqKhwaF8xOUegyTdEPrJJ+gC/qMkg8FuCp0ktx
	 0V9Urbhi2qKn9eza5DkVXDNO9CnUOgUwP3m/JxsytWZuymQpH6giApAvFK46QTu+TW
	 3qydc0g7hXdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46CCCA463
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212023368.14756.7432492947285511194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a5231a231a8543b4362ed1491e1d50f02c4d186e661ee7eb45bf7437117786
Date: Fri, 16 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792120233
