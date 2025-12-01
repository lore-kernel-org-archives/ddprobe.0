Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D370305E00
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764607974; cv=none; b=Gd3eVQW+XlTd95Xi/zEFA0kskTls/DHPwSgk5vLL4hRQsWlzzjGpvLyY/0NYC1lQMHZpFzcI2CsoPSQz9TiW/AD30lZo+pzwG5barEN5cg41UiPNHgARLlDTkDfG7dxPYWLBlrM7Doz9Mb9XtEIhFfH6cWYrsCECwMFTyzMP2eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764607974; c=relaxed/simple;
	bh=q7BL9Jfwps+i1Am8mDRB0BXoaB1N7t/bsvVkiCV1IPw=;
	h=To:Subject:From:Message-Id:Date; b=h0BbeZccbiB6RCxEgXoqdMws681s5VNS2cP4B7vZiTk/d9AttdXds913NuoeVOnCyWcK1J/wXY6qYS/1VO99spVMqliD8YAnqQLV7rtavdBCwoqQ2X1VHOfhhoybSkyGL0+MJ41sNhwBk+fqOAHvZTficPEyoyR6HRk7yrYFnn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UU/tJV7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UU/tJV7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764607973;
	bh=q7BL9Jfwps+i1Am8mDRB0BXoaB1N7t/bsvVkiCV1IPw=;
	h=To:Subject:From:Date:From;
	b=UU/tJV7CgWM9rc11E7Lx24f0QRvDlqcXJ7SJ/By2/U5O45SP1+spTlUngcSg2U/WR
	 DY4OSZuF11V4QcTqB8wNaP+YwYmtoHDFzTGtB0LhMl2FKg9UoPQpBin5x2P7gCjGeZ
	 3TnlpvxBFeSDkbOUlPlzX6GUsFFBbsXA5FAukGztIoYbZpWwro8TUnJP61Il2lMUOS
	 CETiUXJQa0b2BQylrEk+Ql33OfJDAUnOho1iO27casYmt23GJZ5GyKjwlU4cYvYl7F
	 3sWCA3/NHet9kASGrrATRI/Sx0fAxsMY4iPeNbVvLkVjlkY3nf4H/7R2dEKGfL8o8M
	 suYS+p/BtIGOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F9D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460797358.8550.5248132376277918804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec3927e76e96193f799e87c70877b9da981f41f7c895565c3e734c5aa9d5a1f
Date: Mon, 01 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764607973
