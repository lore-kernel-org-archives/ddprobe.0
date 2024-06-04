Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58733148836
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717524983; cv=none; b=LXZW258OJquQxT74u5+at2Isr7H2/pjngUZFUb5Vw0aleuYyzDiSETdGpkiFpaV9dcmeq1uz5v4qeX326IWKtDghD1eZsWLZ6FWytKu7gWMeOpY24wT9j46lMXa8F6dQe9Zr0ETllOWdml4mbCJGzdnzYSjFW8sKELtKk5GR6lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717524983; c=relaxed/simple;
	bh=zJeSarjsM/+P1kdNZUcK1WqkAMoLyrFgua0NjogvsMw=;
	h=To:Subject:From:Message-Id:Date; b=oCftyw9h/mrMFF6k7sj/fMhoSl3qgTCzxmdxH6iCRWX/C3Dx9rrjN141oi4rH9vTJXTT6ZQGGpNXSeebQ4lk9XcLDII4lLKEkDCo4pZnrf0neoVbAE9dJGADncNP+kID/sFCFRbod93dkIkKKMBDjS/nYvZMuK8gHZQj9JBWRZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bk1SkCmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bk1SkCmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6CEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717524982;
	bh=zJeSarjsM/+P1kdNZUcK1WqkAMoLyrFgua0NjogvsMw=;
	h=To:Subject:From:Date:From;
	b=Bk1SkCmixi2JIe91BlVA6jPl+axJJGSkf8y3AQJwnEdaCmGutx4BR/MdE2o6c2e+L
	 athzCvF2Yi+zRdCUpLUbz1jJK2hWXiCTzYGSPY6KPa0QR1Pm6hVQjn8HW/FofsIT6Z
	 YlG5SBFzCRmsVv2EoqrNUhP4aoMM2rfjOu05lAId4hXccxxvMDtdd4lo3YJzIZh7TW
	 yfVwaz7lj4BrMKPikmeNpWuAvY/BQ/R1VXcC8Oz40NzzQsx4bhg8iMsSH/V88B5dBx
	 YR0zMF5gxPUExdWAoAjXrwggYrgJ6xI9QnBUpuCQofYQepAHPlwKi3Fnf3k9va2GPg
	 mZoa5EgJlVpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CDEC27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 18:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752498281.9991.6064758175468957441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae08873059413718706207b1d37e34e97dc40d7a14d1ac5cc5739807094a992a
Date: Tue, 04 Jun 2024 18:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717524982
