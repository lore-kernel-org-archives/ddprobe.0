Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9562FF664
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766348034; cv=none; b=cBQuh39SSEITwqP9CWDQFlJEk37m6Di+B4KP0VFJvrQrISQcm0ufUC8zA5aU/uhQ2yhhyIj3lOJ2qGmZd1Oyqz68waC4fB5v2m9WO3jcPl2HIfrxBxOUycI/MHV+3hph1rLZ75Ch+d+WYuUSGknaWlYaSg/l5cw1vjiIi0f03g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766348034; c=relaxed/simple;
	bh=iu227QDGho7BdRZYmzscmPh/TLD2svsPIEIywRKka9A=;
	h=To:Subject:From:Message-Id:Date; b=ovPnPj2DM1y6ndSzA+HT9WBxvKHBaT+y/QnokUyPiGm3s11zAuCVylq0Q3a/7taWZ6e5l8W0pQ7T18MJ6wOeF+W9AUzhXTSbkqg07IDNrEM/Dzona93XY1PPqrGa3mx8Pkuns8ee2uZoL3yaxNJ0qbM6psMIOGepOyrjSqHlWJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tELHSMSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tELHSMSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B04C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766348033;
	bh=iu227QDGho7BdRZYmzscmPh/TLD2svsPIEIywRKka9A=;
	h=To:Subject:From:Date:From;
	b=tELHSMSjtjfqsZFp43+542vuI9UaFs85DISFsl+tpjaxhJBCOPwMgE9PXOdcySSeg
	 KusM2Sc43KIitql9WDnqgvCKUXlEsohnEEuJXXwVSFCefCvhImvijBhHsVijwIWe1H
	 WQrB4/ANAwNt1k3tcjC2knbdVpwsQcClFMPk4klr9B/a+jCsvxp6WiBYCZUXBkRbO9
	 rFwJQg8jMRdRgm9MDcUTY7nP5nnQfOdSTMPEnJi7KoQc2VsxFpV46jG22drKeHzusI
	 OZOs73e7lvhz2f/m2hNKERZxk+6E0YNxwOiGLqYw7xYOdXYJizXS+6Z1Ll9ZEX4ikO
	 JTgK+KX+81d5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B61E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634803358.27074.17900437437520491157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab838ff82e386e5aa1765607048c51024b80326872c182b263ef9eadc7c850bb
Date: Sun, 21 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766348033
