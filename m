Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F921CEADB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760880594; cv=none; b=IH86vpeAASYaL3EJQ/wT90hdiWhaaxzUkAHHb/ek+fLR8SwQ8TbrPRipKdQUxzIpdOZD0vMMN8aYbLgUAwmIMn17XSS6V37FBguim06aizXzO1Trlb/FTTHUNv5NsWMG84tPIuAYQK57HSlpGvbeohxebtsfVOXwfPgL8+bRJnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760880594; c=relaxed/simple;
	bh=cXj/txtvwLBjCbCNXm04xYW0Z5wUchntn+eM8twE3fE=;
	h=To:Subject:From:Message-Id:Date; b=JQq7YOAMrMYzuou2SnlKFy83JQBKt2oqV1ANvDFcQp+AUkVB9S1VXeNWTyXtTCUGNX7GfIXWaDiJkeTmr+VrxAnJNF6FX42UcYMil4O4zVImLozLudJZLbw/fdYGup7F8GPHfpSjUPdRXIcQfJOOKfjkk/iXX3Y2SjplLVXSzpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiduRQ12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiduRQ12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F79C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760880593;
	bh=cXj/txtvwLBjCbCNXm04xYW0Z5wUchntn+eM8twE3fE=;
	h=To:Subject:From:Date:From;
	b=MiduRQ12k3KKGAhb/MPJR8rUNG5THjmOKZBHbZVD1Wa02psDvLyTyTi+/rNGau9wO
	 232WzEqqTH0cag3Tthl20/WS57X4fTfAH7fLZfas6jXr83Kocu3dQB81sZ849OpgT1
	 0NmURWBA1sPAEQ9CG0+2RTvC2WfC95Ov9ED31Uy+xzPYVXk7ipF4fAfQfcJHwK1zNu
	 UOR8ryVy+n9AX4Xq1RoB5c4WJrKHyQ3hBegIS8tSqGN5LHOb8LJxLWCR7v2VbMzi0Z
	 9EdGDfsjaEzkC3HoeqewhJnVgICS2bbwU5NbW7eJrj/qOXcitD5iuTtn8A7Id7wm1d
	 HXiGGNN6Kl8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F970CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088059358.12903.12580479217458780346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8568aefba69fdda9d1232455ca1d229570a0af49251673b9d428b13df5c41f6
Date: Sun, 19 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760880593
