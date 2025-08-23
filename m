Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1682F166F0C
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755951594; cv=none; b=UtZ4OaUoTmADlSYPTCMitk1GsQ7DR8WpCCKllNWoLbFBZCLiLAGdYko6QRKpaKnJSH3cdo+RPRi5Vt4L03i2haL27Dte32KR6Vlj6GlByEQDGUvZYBwqt9b9ecUIaSpAQyTltcoZ2O47TFzFz3KySzsSnVcMGtILf3ORKgLLgV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755951594; c=relaxed/simple;
	bh=1DkmhNFK8AB+s0TaDsvkWSTp6vSqqq/kUkXsnkpSTeg=;
	h=To:Subject:From:Message-Id:Date; b=IuwR+hnzhtk7FCr+FvPP1b1pCwWLsIHdhNHWsWb0YpvgD/xmC2tsGMj+JOwgtVgeFddcPAfsFVVliNmesd7KKbdOcl39IY3cGHs0iBi0SY5qmVp0wA9yJGz8CpQ3zbp523J6SH7Q/H8xn77FxMht3BImneEbAS7q5RLVHzfcS0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUMlfucz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUMlfucz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FBFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755951593;
	bh=1DkmhNFK8AB+s0TaDsvkWSTp6vSqqq/kUkXsnkpSTeg=;
	h=To:Subject:From:Date:From;
	b=dUMlfucz7TxOXAXSVkyfOGu2BaZAEgHDG/BMyvziBVQvXa0IZ+jTnt24DCbjjE0Nh
	 fZ42g92+Cyb8+sEXvi9e371+1CvfF7GLveH5GIONHLKpUaFZwXbmkhx+i1lGzJYEEr
	 F+aRTj6F2RaDtnTmPTYdm+OAwr3+Dgl1V7Lvval2UDPjnbBYhE4Ui1IgfuNqLtSg6t
	 UuwHIR/hunozkLvX3QxlpAA/IPXfD7G4Jb+HLmQ2CDYNxvKUhi6uOC2hj3vE8y6F+K
	 aYi989SPuERdbivEL25Cogi8tawNeM3+9qWCTMe4UnPhe0kIM7eQjtYikYqgG/H8yF
	 ki5ZaSBq68CKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F050CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595159357.6550.2850773189345141667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75085ed62828c733d585ae22e14fbd0e60c4dc150c2ee5a562bbad54a86361fe
Date: Sat, 23 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755951593
