Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13749126C03
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729215954; cv=none; b=Ikjt5y4b04zdAianbFZqhoXJw17/9239dW/UHs2PZEqVioHi5UO6s5ZKGLFJ/Z9hW/fnlWonrSE+tdiGXlHPxLIIafF3igP4DoMUhvrBg6fMTSEYAHESkWLT1zv/Xp//C9Rpjl8/dU69l3SFBy3BHvrTkMput5yPy7atqmerxlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729215954; c=relaxed/simple;
	bh=rw1uEijHnGGSpquy8JfAkLgt4eZT7v4FI5UeZML0okI=;
	h=To:Subject:From:Message-Id:Date; b=PdyBB0H82J1Ja7qw4/54lQeprGl7HgTniYF6gAoxTF+af/B8/kelAwIZnr8lWx6rIRGmdmAA1nhEYj0LuSDig9/0XPYpKn+wX2obET9Vbhorz6ZCyevSttHuJ+67Z3cQlLMUhr5uWtGeCwcFHX8YHwXamYxUnbyQy2ooBn/6VZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuzvFdg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuzvFdg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A8C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729215953;
	bh=rw1uEijHnGGSpquy8JfAkLgt4eZT7v4FI5UeZML0okI=;
	h=To:Subject:From:Date:From;
	b=KuzvFdg7wuBxTlcgObaXJbpfk5A5MuY2ACsxTD0CIWjCef7CH3kVUnMH/TN9FbDJx
	 uifr2fQBlIvYdJnd9IxJhENbUqAt5thIIKohUP0ghEgkEH2Hx6Srp5aZUV9/8lDcK1
	 q6M3hSNlzucMWmJNZV+FyYhT40ndsUlKm2U5nUOkvoLn74idiHL9bj5V7x/qPhoBs0
	 uTEs4U9pCOL265mDRBwWvRc2H2fj6/Y3uPO8savmKgDEHPt6EXvBJMZL7SCNaa0c3k
	 bzH+qr+7ywyhL/TR64olwh8tn0STA/KL1CXFysQ/I0svKStnpS2jbJDStURKX5NOLm
	 rPTS6oJrPw7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB6D3C53F
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921595359.18321.7677915307478098886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382004170e2599d22e7c35b75bfb4468210d95ea7b98713dbc7fff83947b334e
Date: Fri, 18 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729215953
