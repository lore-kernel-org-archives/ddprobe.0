Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C8F33EA
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747589994; cv=none; b=EY0PvYL03juc8cwjrGPyy8P/Tdt+FuTOlainpehT8OyXdtpQ7ULSMrANuGY9smqywuIzQ82OfS1MZ/4Er033pGfGwg1lOXBFisVX66JXMyu2ku+WfyBhfMEc6b2eGIn3NadvIKW/1H3+Fo+jn6kn/1paDk1YAvbZfRPZv7dQe5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747589994; c=relaxed/simple;
	bh=T+aFfyzZV/rxQa052cIWOKZrzElnOeaEd9vy02fp2FM=;
	h=To:Subject:From:Message-Id:Date; b=Lt+MPgZMNzKJxXnmst8xNPB5hg5znv3cxZcBg1Ef7U90/PKtqCe+Oscbq1yaSdYZ+c7k88JzlUDc912fmCJ3cjsbt5Yuu0IJzx88nathCvg3pjB0WP8DgSpWYu1sjLg14p3vrKSllcAjyzAK6QMEqZ4KcLh9xvtDtTJIfRzgtD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSAcyOT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSAcyOT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E701C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747589993;
	bh=T+aFfyzZV/rxQa052cIWOKZrzElnOeaEd9vy02fp2FM=;
	h=To:Subject:From:Date:From;
	b=uSAcyOT52YYmAsW/Y2tU5gDH/1ZmOCFILIUuJUYLKl/1xg2Wn6KTHFmLonbqoAIUw
	 wTtAHxHjet0ypwDKIlaSoTUYLrhFSNYZg6bV/xDy3p0kffoV+48FdxKiAY6KfSY3FB
	 Wj1RlVgxdBCRnqcbpzszrupUzK5EcFL4ISN661R1MMzLIa+kVGxNQdo6B+oF5W8ese
	 95pzjUrI47HwxLklp0gdDwyuJhIatQuSF0VvP8o01Oq5GrIxBST1rAqSLbqFqO4X4G
	 tQt9Y3PLs9lJ8NfWp32jdPvxrc7MMoLVLCBUgtV+2ajQGNJ//h3HvFcVoWaEQmdTWF
	 ic63QSk1ECKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF4C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758999357.4307.11263348514675064651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66e7311385196289190ef810dca6a6dbbce22ff194064bd8f3340452334d882
Date: Sun, 18 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747589993
