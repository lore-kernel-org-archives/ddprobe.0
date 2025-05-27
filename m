Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C48139D0A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748339994; cv=none; b=XeLeqz0EpXvOKM2WFPp2yzS16lGaNFaTHatXTcMju7o3V8W7r65esSHBqUM2oR685oW+U8rGlgzW9nJX85pFql9Wbc8xz54l1KNv2UIB+sk5WgUuOzbQGuwde1om45+yLaT6ZSdlBS+zOdVwtAU3XaiTibMOC3CvLA53oHnuznY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748339994; c=relaxed/simple;
	bh=ExWSVM/8c890TyUxHVbOCLa6/Id4Rnj/3NmhAonMEJM=;
	h=To:Subject:From:Message-Id:Date; b=jR22mUosHCWWaPdTrehWuhKO1EBjwq1hV10EqhNTtzoUpt29YOGmU2HOXEgAOdWowegBjCQN9IVRLevWhsYAbMBHeNFeXyoq2yPZu9/591xYlHJLFPYFrf6F+8ULGhWiohRqUaUz8m9Gjupuf1+ZSgDvm5zGtLLb5yjPHRrEI88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFhJthI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFhJthI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E9FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748339993;
	bh=ExWSVM/8c890TyUxHVbOCLa6/Id4Rnj/3NmhAonMEJM=;
	h=To:Subject:From:Date:From;
	b=SFhJthI2h3JjWJ9wPaEpPk/bDkleLCnn887ymVqRzGCK8GTEjewrKKkP83be3HV+L
	 WE3qQdq82Pqid8xp1NemA24bxKoA9wka0vEG0QlZwcW4H5vmHTsRcutDPGVlR85A+Q
	 a1ldjoltRM8vPgBhB1neZgmyoqVXQK6daN6t6B7escCNA2M4F5fg1ty3ua5gMdIk69
	 9mOYjoK1OGAX+kZryR+BpA8Rc+XOjVWuhLATmrjgBovczYMyf8izv87CrwApJui0QR
	 x0kvVYfCObHIR4mglQmxSVxYnEzEW3FFibmiIR9r6e3CshRqSv9UrYwDz0e8i/vekx
	 cD4TRthOYH1Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C4C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833999357.30049.18091108385208145049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6933b578ea90f1406222d9fa649b45de017240759a1fc3160843b234626bdf71
Date: Tue, 27 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748339993
