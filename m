Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C5A46B5
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747534794; cv=none; b=Uv/OSUv56ig1oDiiesEES9k+pJu0kPMcO8c/osylKCLBViB1IUsGTo0LKBd4Ie3xjNmcceMiuvsTL8OqjdiKbRRhAHDiYmOzvU8hc/yWA6un96lU2CoyNNNkJF1DV0El4RGFxU2vOTGhc2XIbzkUcU40ikWufbLrPHycEh90bCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747534794; c=relaxed/simple;
	bh=eXHjLFYbiLodjCyzhA7/2tj9mAMnzg6oVom239wyadI=;
	h=To:Subject:From:Message-Id:Date; b=D7tm2ECcDB2gDWr3rUk7RNF9rcpxhYLCYrkNCcb1nIxy9YixyzJ8SMAYWe7InQUEdW8vrrVhkZSAc3m+0wCn69p2dCAsHCOB28eYQELv5f6AB7u/OaxJr/b+/HW44AjGjeNcWOd/AjesXFRHq5JSAphMU36ipOx49tU6wmzyxIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bihACkDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bihACkDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87EEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747534793;
	bh=eXHjLFYbiLodjCyzhA7/2tj9mAMnzg6oVom239wyadI=;
	h=To:Subject:From:Date:From;
	b=bihACkDaiyoeN7+netsJz4BHVj2xj6lBfZjQO9XfIKIbuOdQx8rg4s/sJcsz2pNNY
	 k992Uyfj6Xn5lL2iU0AniGo0KVSO5fwdXzG7jIV1Pw0FbAzP5HpPC0QCGqIdwBze5L
	 DIeZ9TYi5qwxGbN6xlKoSgfDxlMn+XlR0pCBWgmPwconIM8lw4LuqXRRooMojCtnC3
	 d/q/2Pc86XljsRbd7EH1oMGcNyqxr720peHs/4vvpNJV3Bg2QG13Jvrmd/7IREWRwy
	 yuFSBWFetw81FGWHCmuG5EwegEYnlnY/6XD5l3649HuF1HXW+ry+aYUiU/xGAcsaGQ
	 CNs3gxXYItyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95900C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753479358.25470.842667211844425271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0068583b5765f556842f90b98d5cedc444f39f4446a0dd1810c36791b0f40793
Date: Sun, 18 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747534793
