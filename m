Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54432D27E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746989994; cv=none; b=O1DwPE2dlF4RjH4kp9sI9rBuC1mmsfgi9PTYs5E1ajjVkrOhyuiwZD1YzQOOKWyPA6ME9A2TzoJDPYk6zsJgCA3UlUgdD9B/iESFcV0JV72q9609buAjTytPTPAtiumwWQ12GLqohArRTw/8PhSJgNkAWPnW4pR2fU7hG1PcC5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746989994; c=relaxed/simple;
	bh=OkhXOuE4Xg5P5Mk9xgnWoz99LXfKtY4Wo8DXrU+DceE=;
	h=To:Subject:From:Message-Id:Date; b=XI4dGPb6qqpB1U4ESC7YfYkC6HE0OAEEToTOLyuuxH6zf9is/xOvqr14gSQII6TAN3TeYidxXW34ukkMVY26fmw8IkvDu1La69IQQ1KRbPtvgTHTyn07fVacfjB44MUQUKmsOvXcA/1yzpS2em+eIdyJ79mr+60Ni8Y4n21tS2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqMWdMKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqMWdMKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A7C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746989993;
	bh=OkhXOuE4Xg5P5Mk9xgnWoz99LXfKtY4Wo8DXrU+DceE=;
	h=To:Subject:From:Date:From;
	b=qqMWdMKDjhdxIEhxjrTg+slOr6kSybTp7yhkWKDloUa+5IK2U5k4ZSMnHs9Bd8pka
	 Y8FH0jQnAopr/0ueZBE+7BWfo5qpO4teolIwyrhNdNgY0le2TJFojuqEVa8T05JOPl
	 jvm0My3UvFgKYr7PCZGTl7CviMJaYv7fAauq97crPFsAx/pZANRUd8v18/hKhWDumb
	 5p7gQ0lUwY8bkO84nLw2ZHRQ+wfYSanFZ/HDchfh+kVzZd1246iwWDw48d1twCeR/7
	 vz/Zd3Tax8ML5ryeLlwXFaf0MGsijRcbk7mSmbFQ9tHMJqyFnqPVrPV6PAJIwS8NWA
	 4anehdzvhUJ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959E1C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698999357.15195.1237406081263600908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315a0c4502c42afb79b38e1c2331e826831d1f9d3422846253ee1cc9758702aa
Date: Sun, 11 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746989993
