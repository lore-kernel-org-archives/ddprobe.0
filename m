Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4483BBDE
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402954; cv=none; b=q88J/aL4orM+4YUejtPscgxCxcoXcPH6Ockk5E4L4bWcPdOEzbsWbJA10MG445GYnYdAYGG77DDIW5DlryIEtQuYT7FyxbW92vQkTSjH5t1epcJ8hawY8VwOfAML3JvDZIjSu8DLPQgv3rcHrCxHSlVmOsciXPrNkTV1qYxFZUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402954; c=relaxed/simple;
	bh=ygiK6tAIaUa9/QyzB5168mPJT4jsfq/oog771DhFvrs=;
	h=To:Subject:From:Message-Id:Date; b=sq8AqaW3zcUxQEtIIbe8mN0SKe19Ew3EW9VHvVTXk9liPuIQoLAHLa0pXG9tAsDCAZS780h0nr61yRmCRLwXRaoHHQSxCyoXnuTbrlF3rExzs2Ay7Lj3qrygWBc6rv50V3A72EF5oWzvSVixuNnEWK1ONZ2fpMFm0k8mDJzYP8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbB/zqTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbB/zqTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB6C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728402953;
	bh=ygiK6tAIaUa9/QyzB5168mPJT4jsfq/oog771DhFvrs=;
	h=To:Subject:From:Date:From;
	b=AbB/zqTAU0neV+4380qxuPg+zGkcl1jcE55G59tgcNYJy61l5raQ1X0+n1gud7UL/
	 dyQ3ElVPow1/VTtsiwUhzcUVB5pI2gwU7wLcd+amSVyX9q04bagbhVW6RP+bt+aDL6
	 /J9/xkiPiT2AVoUkDGc2If7v5N99eDN41ZXIt65Oed7eDAK7nzIYBqYrcaHaCM4XEz
	 9MfIRnPY3xqndc7oTl0ZUeH6XTq0p1zodLh7lKsdHRjGNzs3VOvQvhF/YOtKcB9WKz
	 TdSsC4UxWupJ5u2ia3vo9cJLaPjusf5Rfxz29gQ/aKbGbt5uAlX8I/JYQcx+8lEgQF
	 5wPmxAgHZ8E0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A24CEFC29
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840295359.19967.5529117030922494463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a332a141a5e04034c724900453b7b1c146fc1339024d29b8977278685bc8909f
Date: Tue, 08 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728402953
