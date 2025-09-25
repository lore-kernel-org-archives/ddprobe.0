Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD29231BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758828593; cv=none; b=bneI5jbkTU0w1KEEU6EH+F/4IxyON8hXQAV58z9b4cFmvnphAvDQieiUsXX8DDQ1TGSsUn/0wzGTA2vRr0EAQtCcA8q3XfwcRJ32IbEU2Bkz+1QDmSaX4U6gwxHfeIu0fExT2AX9HqO3CYi52AiIw/kcD8bSBCO6RiWdopB8jHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758828593; c=relaxed/simple;
	bh=Ps7J6SihMpQ+Y+5aRUnt8PPb2vMvJSB/mgjF9N+TrlU=;
	h=To:Subject:From:Message-Id:Date; b=aaCdoltJXGht3cBb5Uow2kcGGQWLe1J/OqKFsJSPvrz1sz1tyQdRj0C0fI3OeilC0rXeFJ3R0yI4KK7xK+uuyqCmTGVUzWASyzbQ5P5mP8lFPO9v6Sb8EcqQUoMs1YOPf1OZz/QbD30/drjhksLXdKpskGzRZGUyl04apI95pww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wta3Z5Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wta3Z5Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758828593;
	bh=Ps7J6SihMpQ+Y+5aRUnt8PPb2vMvJSB/mgjF9N+TrlU=;
	h=To:Subject:From:Date:From;
	b=Wta3Z5UuiE57Hdlzhk47NiF3Eiu55VTqBnJgKXTfLOXTmcKwxv8/05c0Br8LLItCS
	 tLnrmH5W/ONHhxra/CJUyTLZR8/nD3yzwMJ/lljTqd6vXZx2sWOqaXh+P7BAGhWb7f
	 bXV8SCXCBU/O/AgKYYLmAm7M/DaPSq64hwGDlaqstPaeF25kPAVpQmF1nW7vt70g0T
	 +U+SCmA5ymqxb0FyUfmoFi+c8Vshef04SKvmkGyuGLtDprKQpMApawR3U+2AfiFmyL
	 O6gbJ+hUX4hEllb8M05wUu7v/kbguQ9jsIQm1V2k4RxT1AKsJ0FzviQni1TL0wiZia
	 oqQtvdVHtxQ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922ACCAC5BA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882859358.18686.12001767444361600976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a83bd71f8388b8bff8c02f01361ead68d291cda9ea8d4cae255b348dd87eda7
Date: Thu, 25 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758828593
