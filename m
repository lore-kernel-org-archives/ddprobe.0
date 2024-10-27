Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE06F9F8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730056554; cv=none; b=XC+Moo7r0O+T6AerQXn/zYB7YwxGgU93F4VwT68EfwyW5KnH8so5+EOBzv/hwuOSDAvEDup1WjmrkpaYONJ38Ky+loHt27REBPeNDcykfE+aCzhSsD7PueC9Apqk5qC/hs4ekXfwJDao+L6RLvBFbBzF7mNO9ikmqgvy5ZxbHTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730056554; c=relaxed/simple;
	bh=ZOwYX0tnR7QQpAnKFWgDyevnpdW16gbGm11wEAphags=;
	h=To:Subject:From:Message-Id:Date; b=TwLH8j78tu6oXspJ+7yjmfd0pOxlq9Wn3ym85SSVfwJIhBqiB36QtWga5ziw0TziIJT4KLuAu65i3uVSVJPnKYdWe4Ra7htcSnNWYpTFTMktT6A8wPS84vXruqX2HAGWMKe8IMCxUTEbb3hyvG+Sr701j5Z3NF0jejeiK6QaAZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhfFOEGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhfFOEGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730056553;
	bh=ZOwYX0tnR7QQpAnKFWgDyevnpdW16gbGm11wEAphags=;
	h=To:Subject:From:Date:From;
	b=KhfFOEGOXThB1JxeVSUgzOTgmWrtzRAmsIBmnN3lrouMlN94uFHXC1CwuynzskmuQ
	 Gr0ZiSUXR/luWETpre0mH89PpeAh00jIL5KifwCdm/UTCXvR9uaS7Juh35/IHmurDA
	 Za4m4xdxf1pvOv9MQmdUbTEyHqJ6k6Pb+8iG0XNC6GT1XuhZqeoNhXOEuB6ZonxZXc
	 cc2HNW+d2QU7ekGXbgV+bdUIa2OplafT1++ovB62lsQSyytQ1pYskST+oAYCCCO7jK
	 7Fq50J9COdSPwUpTniQWdDmnf5fiQH4Lh1W6b0c6yE1TcwKzTu2by5aeBx5iXn5RsL
	 sctmjQ+oeQkOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92905D1357D
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173005655359.9247.16152065638414561135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b496588ea1920d7a117eaf9188ed4c218d9a0259705c44c358c3f3ef4cdc1716
Date: Sun, 27 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730056553
