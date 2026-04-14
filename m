Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCDF3BA23F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776159454; cv=none; b=eLJ/efTcJmXHSRzLNbs4X1TAfU9UXkZUQt4gvZ8t75nn7AP7GRxJurTeiLyPCHVwWYp/pQoW4dNIadE4djOmXsviZpm2BCjqceWtwxVwtLDApOyyqPfXAs19nCs0lCbsvw5frr5spOUjwEeCgOxjeX6cgFG9eFakEstXDB0QVQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776159454; c=relaxed/simple;
	bh=8VtE3wiNZ7Nn5KnNwyffk9IGb3SQcd3YTxuMkotDyrg=;
	h=To:Subject:From:Message-Id:Date; b=ZG4MqoZihqu389KXQh1f72FYMzyfawhDCWFcQa3+twb2zGl7VXOQd+Rjyci2qgFhduwJ77sljCqkl5ahnRd8IwXtz410+un2XCExJOW4DNBId8SBqNNxWmKlrwrDAoDR9DhGaeAz/Nx5GxxMcMWTf3RLULGu5sPqy/aFwgmvaXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu9pWIAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vu9pWIAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C120AC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776159453;
	bh=8VtE3wiNZ7Nn5KnNwyffk9IGb3SQcd3YTxuMkotDyrg=;
	h=To:Subject:From:Date:From;
	b=Vu9pWIAgKyq5oCBSU3S8UslhbvccqDnhz4sooVxa5hTsryNQc/cqy0ieLXxg704Yy
	 PLhleJhnNek1ZH3KlVhY+/+CIjOxWfhACFN9E8pYnXKTID0ytChF9AjYISnEgrsLZB
	 GvPT64qxFIHc+EEvY6nFfa0SO5YUqeJmQvtY36XOLECKzL0ljvuxWZtFuioexB4tHN
	 DEaEBkWuTj7//MM+BCinw2GSw9VgTsaTCpMsZhk8NqBAaeiaaCnXHAPukL2uaaHO2N
	 DZpZsXL7P6ppRee/sBEWu8/8kBeI2zngeNkXFtOCICPPzLYyTPlBUs8xnhk+VBZShW
	 YMI/C58JF4xkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06F1ED7B96
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615945371.18565.1126669589424457182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d94cedd6fbf9329a46b9e28f393fe121c6994e7c541dd65e7562ce6f5b984f9
Date: Tue, 14 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776159453
