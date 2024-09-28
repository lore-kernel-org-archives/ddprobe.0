Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2260F225DA
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727536554; cv=none; b=snKDlY3AQsGSfyfJVNYFeACdh6NlQYI/HSxXcqhTdcALWVY7vWGfbF4vkVsZpaEym+sJsI/f72FrpA22sVp/c/Tuw7oyJQ3nQo85fJPZoh/NO4tgPRT4UyJ9I2qVXpsmbgVXJ2bclKDKBPq0oQIc5fdFWx+txICadqfsSKSXgLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727536554; c=relaxed/simple;
	bh=nMo8noMqkB6mWyqFZFu5DoooiFM0fNNufhlVdN4v1Z0=;
	h=To:Subject:From:Message-Id:Date; b=lDkMPvweJj9cdAzO+GtoPc880T7ZyNI6jjEGoEQNupu7nORnpRk9TTDO7y15EPmY0HBuFY1eHlZoV4ym0u3XSccH7kGUyPLzGAhqU86DHJ91N/l43eBlMwIAOorv+y1K70JqLU2Mt6HDmXyMaY//ZknZYOXiT/+VQH24c7r7Y/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJvJ63mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJvJ63mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE277C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727536553;
	bh=nMo8noMqkB6mWyqFZFu5DoooiFM0fNNufhlVdN4v1Z0=;
	h=To:Subject:From:Date:From;
	b=cJvJ63mf044vZZelfUcrkVEi/ZxtE5UIc9A+KjcWrb4PD9VTxTO7333KG6szA+Eay
	 MMiepVyn6qpPKe8+v5/b3FBAEBGGGixOztuyhK5EdXcBw1RKZQIt11kK2SH5EuUldT
	 km4xv5KolMxTk6XFt3AqZikS3Vy0wXYXkkdetMqqNEuJTbxCDlWyYXDmeTKHyPNdmR
	 1tqKK0Zn4pFGBvfaIOYcAuwugHZ7RsuoO/CsXzxjfFA9csybX+6aML/OUjYNbLUW+D
	 6s6vOvVr5nVqGpRpvF6vRQkG8Hqpk5KDIGilSu922ixeCihpqeNb69voIovlNJmyXK
	 hyo00JjyZFpLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4F6CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753655358.18084.640950076999713254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2246285f79c8a10624ee421984c769d458b287dfe0c4a531fea7688626c07095
Date: Sat, 28 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727536553
