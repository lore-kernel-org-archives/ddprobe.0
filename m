Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B91CF92
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726429554; cv=none; b=hjumIBKYvOnHPSLMOgEZZQoelb5+UExrByxkQGQ8dEsOFxRzAvEdyYIsMF3x+6OxZEBag9P3fN8FjMpdIU3TfBKD7Xzj2cLxehY0xRwliaWToAr6jOokdXtg/2OHWWRx+PCy9ef5Io3T2c1j9hWqVC0V2F6+lHfeYnhOrCZtAuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726429554; c=relaxed/simple;
	bh=ijHZszFW8VLgzcQKFVGRqbURS88d12K0X//HxyEf89k=;
	h=To:Subject:From:Message-Id:Date; b=Gxk0jnlYtYf9wjmbq8Bz8ZdwuJnmQVevdTo/pG+lsmArHco9plrl4DMvqK8xgruL+MdABEepVjBh/44jC1pAAo9oyazIixlPAJ9P6ujQKfvK8aUAbMlDQ+7saWmufMIg4I0jjZWOD4aYLcBExf74ytnRxR8a9NxvSh9xotNXssU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj2l/Zdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj2l/Zdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89A1C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726429553;
	bh=ijHZszFW8VLgzcQKFVGRqbURS88d12K0X//HxyEf89k=;
	h=To:Subject:From:Date:From;
	b=Aj2l/ZdwgGe3UB09ezgtycpeosDQ4cI7/TGeVBOOEaqceHlY1wRgVXg+qPmO+kwpn
	 4wYUUGy12dLoXqpv0MLG9bDfYjedEk41uOm+GiTKuLkNijXeey3QPAAlna/P717gky
	 Pn0E5p/sJUHVf3TiT/epNmJP5RzKnXvgaz5d3ftaZVawmBEq1H+WwI8rH9vUUaOE+6
	 eu7ScUJ9YVvJ1EOWxprHIJUbW+2JeKmZ7RB/86jJpprv1OcO3DkM9VhQWdurs1yFEX
	 b+CMhOo4jyTDi8AP1FpqYELK7HDJ8O8P1B3KexPN2wWuwIF3qv3lUXUSCdttXRNF7L
	 nvfDOtXqRfqYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F92C3ABA3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642955363.8924.9540666892688288767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ffbca1b98cd97ff275ed66f162945fa59dd302845f369aa4d4588131b2766d
Date: Sun, 15 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726429553
