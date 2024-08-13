Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1937F15A8
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723515954; cv=none; b=dbrb4EUAc4sCkRnkQt5iUlZZgPFQW39MfOGKF85jGqxpCkwnX17PoHt9wdt17gZuqaRUzWEffylBzDBV5YiwLTNB2pI9IbPpGoM1ALhRHfpjL7hjba4qACclEZ80+9V52bQQIBpsbYoMnzDyNAX5Ky2LPSQgg0yJ0+VFLGDxPY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723515954; c=relaxed/simple;
	bh=EQCj7IbbCAmYITI6p48XkG47TdLx10c4SVFXijy4NjE=;
	h=To:Subject:From:Message-Id:Date; b=nvD596UwqQb6/BkaDaQDd9nH0OwKJv0G655uUfwE4l5XFTMMtASISTnMe7url10yIdqXsoFmmtMiH5NHL/k2dCz+MousZyMbaIhNHID0iKb9wRLqz0KZ1GKghUtrJQkn2biXSe0Odjf8luUFpxcQGoAVOXmP79NpF7hsoehy1qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0Y/byJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0Y/byJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA62DC4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723515953;
	bh=EQCj7IbbCAmYITI6p48XkG47TdLx10c4SVFXijy4NjE=;
	h=To:Subject:From:Date:From;
	b=B0Y/byJfZBFpCUp6EPxVBNTKPlJYGKxNAjO975XqOWwnJoYxpcbkvRnGOlF4zsUgO
	 rNACTpAPu+Tzp2s/9voQ5yYqwZqAxVbqnmuWQs8p0E1jkNtVzmOiPX8qoW78P9Vj5r
	 YyYvUocfe+l6A/6RRTdmgox/sVmgnqBcgt0LEM156gtdIDmhsRpkfZwqKexmwS57O1
	 65uoOQ9AljHGr6DM5Shqpcsx4CyXYGqwRg3Rn8PrDtbi0+NI+C+AwIxEmQ6xmvwbif
	 hSJHTzu2LxslpdS/HDtaPOK9s/o7+i0Iuz+4evaosgLAArEYsEU63Gx3x6H7O+qZxG
	 +DJoe/P4OKJcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94187C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172351595359.9871.2738995492498725025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d20659807379f76efef6c26cd9420f583eeb75e7f7d24e4bac465202629022
Date: Tue, 13 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723515953
