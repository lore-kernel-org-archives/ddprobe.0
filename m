Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA8B20B807
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747382997; cv=none; b=LIztcY7Hr59HrwEQA07B+hIlHiXwEf/0OChXT1XdvhbTG5XyCNnxeiPnmbCSiks6X8vusDYosDfElwUepVVldGo5+LOOINnvZNlr1RWT/ZJpWi9GQGqwGESFADOnBtY4ApD17ZlupxLcXWReWzJ9i8pkHOFJvRG2mNMY7hY2onA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747382997; c=relaxed/simple;
	bh=tqcqfY/xyi8b242VZy0tQ3+2ckIM5eOPdMc7+zigA8c=;
	h=To:Subject:From:Message-Id:Date; b=tSjQAjlLi0e54g8ovha14JttosrlibanLHDpbq/P/yPjWHYtwpB56H7IF/sl/C17piAHYdYQ5F2swG1V3gCkfv1B8xmuyhp7x34X6qM5AxLPpKzfmiOkAgRtj7KZUWhsUIBtGngR/uG4RwtMIaf/TWPeg95p1fDigJDW9VQyopY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJ3nyFRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJ3nyFRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747382993;
	bh=tqcqfY/xyi8b242VZy0tQ3+2ckIM5eOPdMc7+zigA8c=;
	h=To:Subject:From:Date:From;
	b=aJ3nyFRNu9MgvvJz91GFeYdyuvh7OZ9YsZYkujgL0IATa384+CD8wVmIof7XHVUTi
	 mczvqaTzUonMZEeeAV+4tpdkM4xlYLTMOC4oszZLbooxEjBcr4KFylLYzbGfL/mE+j
	 tNRXuIr6edmUPRZVISyq5MaGJcgVWbsJyLwHJM05yLRm8jectPN7ddeFtoqoKduocT
	 OK8bdeCTzdDvVZudzrnaqf++CRBSq2G/raFcpwP210HQR0gzFprB++JvLB4S4yPGY3
	 wlf4bxMohM7zrTqO1Bx/cgqvpcpMqR8UHCfhHfJJ0bG3HnqiGiwVVzIUY1f+rsEbvp
	 f960gQCp7xS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD67C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738299358.19432.14645153870597758453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c984d5772efb89fde58d800c6d5a80034c5fa38e8da81453941b3f2e91210e
Date: Fri, 16 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747382993
