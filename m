Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D9B4C61C
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715765543; cv=none; b=DnZTNGCqXe0EuTYp0sAR6ewSpSB/gZxZ12nsT05EusebWCBQgddrAJ22lNlEG3NIVYn6beJdyCRjr9DwcaI0wQ7cjyBp5YIBJ+NgPuBbdyNIit+xAEc0lNROmV/rRYN+bHqfmbPqXi/MEAb8zhFGIG2GwUszcmyl+bjyZf6hBg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715765543; c=relaxed/simple;
	bh=CsSp2R+xV6vCLGUIlJLZkcCG+yuAySvIANNXhiZq++Q=;
	h=To:Subject:From:Message-Id:Date; b=aqvZN8PkmeSU7Dvyx4h4ZoP5csRexNbdKTO8yZCesf7hsxPAyhlhy8oWkNAaJ/B4qT4ADhtHyGxlBgHT/322kkS69HDOL0/YUy5qIqaWBN7y1hpfF7KH+QrJJCOaDzCHDjcT0btJ3g8oOh15lwVzLs7Ik40zAwyc70rzFyU3J58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lL4ZIUFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lL4ZIUFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AB5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715765542;
	bh=CsSp2R+xV6vCLGUIlJLZkcCG+yuAySvIANNXhiZq++Q=;
	h=To:Subject:From:Date:From;
	b=lL4ZIUFC7L5cnXnPkGHL02AI/gdmtvwdlor01r6NseFBtJ2a0Iq49owYg48ggaPN2
	 J8bXjKmgPq7DBvkZxTmxcGpIxQkUcHEKKyDZrlkVfsNulSMYgM/5pfTIRlU95Armg/
	 n+D6h6DXFUCXLmdNSZrtZnKNZtGAzjvkgeXVBKJvLhAczpkrkLnhJH8pYDjPWCnvqU
	 TnxJ3VER1Hc3pxb9pCCZa8W4LfJyaHKoZ7Zs3pElXWjdDKkx+7I//bcWvdd8AQqpPr
	 e3bRomnP+yJNM1R0r+F2R9KD/ARoqj20eTJfo66o8tnXmkDIHA+uBIC8SWuybKzdSl
	 4u1FgEmeG+1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8EEC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576554276.332.8721103779049248783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd34dba531ac65462a7fe0ccb4e81da3eb094dabdf1da323586396823fe911a
Date: Wed, 15 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715765542
