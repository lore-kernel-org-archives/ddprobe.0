Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B91347B4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744838994; cv=none; b=kTqAEbpIMOKi0G7E1WRoOOmcIPZg+7KdU04z0XwiqfLl7nAqK/16RkKMWG4L9L6V7wj+QER1ekJKopfe1BOl8pjMtepuAF3Kh8aLZiVA2+vS22EeD1LcSOzLfaeUm9WrBpVyDLlDcK0S5ErrMr74vGvlvxD3mCXbOx+HdOyhqlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744838994; c=relaxed/simple;
	bh=1TosvrzYT031TcF9NdsvD50vx6kGa3/VpXvsOK76i6A=;
	h=To:Subject:From:Message-Id:Date; b=dfzodSxpRv+v6sVzEQAyEeWgLXayGyn2G0Q2EoPXL+huoP5x9P550LDJybjaDtLZ+3qE7/52gxT6Acgth5K89is7o5ewkzS8YWaNPXy/BZYh8xs4hmhcOPMf0lMxfz+0JM13btmhYC9KpUc1DZaCs7QdducyD73mvdVrjyzCpbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuakJzxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuakJzxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83DEC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744838993;
	bh=1TosvrzYT031TcF9NdsvD50vx6kGa3/VpXvsOK76i6A=;
	h=To:Subject:From:Date:From;
	b=XuakJzxMucMgFLIPkMnrV3u0VZ+BA7UBVrR6PA/cBrY3Rc2DQP2uViYGUOFFXDvZk
	 gXNOAIbqGvp/hi+33mcoc5qlvvomyOY/xXdNlY+dHY6BfhbTnF5hCyFgO8AyJZvKlJ
	 alci7CURkQJf3vX1gKKSw8tEZcCQncMI4lqmOpZOdWGNfAwkU/HvXomdvAxCHy5dEN
	 GfuF08zORC3lT6aYRQ8tqXQbRh6oApdNC/+6P57DSQT4DMLn9alZHOgZ/Bk5h5J7oN
	 Vj5bphkN8VfOoEn5jeQvoZ/rm8hfLKqzrApdWOvaevwXODWT4lH5Xtw58fMGuqHb5f
	 XwPWMNZoWe6ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95191C369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483899359.28755.1767324138948080623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26fce8c69699eb9e967baeaeacc7258c528069b135543889ff08ae66f153fa9a
Date: Wed, 16 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744838993
