Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3938D3A1CD
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728365154; cv=none; b=rqhK2wUfzzPoHTDQUnQfit/Qmwevk5frIFVoma94MIaE3/HZZdQFUXVJ+zciJQOzq6TN5twtzRuRxJAiYb1GziUJkbPKSH66SPfHuWJbZx+lol2ZUoAxZuCx4j1E+N60nLYXEE97itcxH7TU8V5BKu9exLzYh91gnHRadUdc1Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728365154; c=relaxed/simple;
	bh=/hT7F8AiwkaSQEwr74LXAdJ9b1/DWBhEYWXt+wHAZxg=;
	h=To:Subject:From:Message-Id:Date; b=uEAJqCQ1pyJcCMtnWl7Kx7JkXT9nE1mm67ye6XBtxtYYPB5SEgkDs9FlP3YJahJ7Tx+l3MplUSk+Q2AFMIcdGhNzx7Cjb5t0eomuTS2fjZjBbAk93zOfl3Ksq6liX4nNzsEN3+Ks99g+2lxoBqA+itubdbsoM37JaxY+lwLvmgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogK6GL16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogK6GL16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA2C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728365153;
	bh=/hT7F8AiwkaSQEwr74LXAdJ9b1/DWBhEYWXt+wHAZxg=;
	h=To:Subject:From:Date:From;
	b=ogK6GL163vk0G8N4RYwv67fWs1ErB7TKuzgWjea6ksg+WcwAPrKxfuca4AjqYSvo1
	 l6hI7i85onPxsXhJ2xY/7Xl1kaykw4+t+YWT0lg+xet9mYLVUMKKIE5PKlo8uwkM9I
	 FVJPxgfdn18+vBKYjg5cswyOjWSmxQOoclVO4X/yzYIY/A+NurbAgAStVPh+TrgQgk
	 L6Z72OMToTxVs+a1gKy11UFZQI6g8aw4gaTrtMm0sYOT2bvSmvAB82mVGcBdn7V70w
	 Wb9ccAzmhg1jC1EiMSOP4KQD6hb6yfn6iroQG/NR8VbhY7xFPYK+qZPhpAB9GO02aR
	 QATb2pFAKHu7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98559CED268
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836515361.28070.18353378758514113142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d0747a23f036e88b6a26e27937c4e52b3d5fc784f8041588a240c016ae19f9
Date: Tue, 08 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728365153
