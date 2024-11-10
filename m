Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123C9233D62
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731221754; cv=none; b=syyHVFe9s4Mm6xKF45rqLABX5OibnWbSAEMbpuSwbzzUdgBaZhigZEzI56i/MthneH6tnoSJHib3D38OuNzkVBhfrnWLynijqUWwT1BDpMmVPLw73wXvhjVFacliPvl6NkqHv9wXPTnzaxKCjbsrFzXz+GWXSJ2O+rJ7TCI4l8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731221754; c=relaxed/simple;
	bh=Pw+pYn1wmoQScjoakB0BAKo/ipYNMLN/1cXlBkFemBQ=;
	h=To:Subject:From:Message-Id:Date; b=ncGAb9RnxDeBxxaJfEbmadtNjXfLdm+BLGEC4kpeK2HV0QuCSDcMCioZFOoQO1xWxCPTpl1mU0CrJSwCEa6bSxH/22Vj9MuIKz6dA5HTf6Cr5HMiQzW/WfeXKOfjFQIWPipefgLyIUcT3XVWhvbsXQvtuPwJDbdin0wtPyRD6QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff7jvpVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff7jvpVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6565C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731221753;
	bh=Pw+pYn1wmoQScjoakB0BAKo/ipYNMLN/1cXlBkFemBQ=;
	h=To:Subject:From:Date:From;
	b=Ff7jvpVyH+aZDI+v9EAGI+qAo8srCp3gEDbf8csBuchnQ2heRwtJs+CmGE13M5oPa
	 1NqFj3/6GFnZthoGk+soXktUicZKdKCazamePx7/eA8RDbuE7NMoqlqC1n0N3NI4hB
	 siBZ/WY1VyvL6gS3q+W1EoJQNlQi9XkPocsjjY7f3+sjkNanMuMfGU37uu+o2swwG6
	 aBeChwyNk/ThLCBNCSjGOOpmiPTtXph1WDxFr5lxWfVwdoP+5AjFAbJOGxq0WbrX21
	 CBrrp46Vr7L3DlkJgxB4gtn/pEPNdquHCzjfKh7D98g2D8Z/qQcmutctuTyjLQzeGj
	 UBZ2ZeIfOrSNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F4CD5E39D
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173122175359.1064.17102677345073983791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b721cb57394e4a2d593cd009d828aedb2cf58e46862843a953e01f765111e37
Date: Sun, 10 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731221753
