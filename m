Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F1E23BB
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739624334; cv=none; b=IeBbh8jNTKEJn6pE6fAR9BJ2HaJCkQ0O2J6cOhohTPR9AW+9pLuJIfeUzVvKnRZ4+SUe4dJ2mCRgSZ2n0kX7M/IJ9cW3Sg01+BJfnqE0IVrocJLvKC76O90TrUinG1H5OpiG5A4C2KWwa8A/oYg9A4xT81IwnqMqlUZ+m5GQQHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739624334; c=relaxed/simple;
	bh=tpDeqJrtrmwQyWqXcusL3s2hclJxvP1v7GnxtnZD8+g=;
	h=To:Subject:From:Message-Id:Date; b=cmWch415H3yQu5M6qVbIcSnsh/TSxsoKdcHSElhABB5+q1vckfIJh9pXAIpaV+RZZPfeO7MO7QdJxpzEzI4nmyzF8G0YhUs21pqElsCdeLcMVYwVwwZir+HZgG0QmxvUJqLyiAn0nHPTN+O0A+YUXhfTesxSfRVEW06N4y4oojM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPRuAJS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPRuAJS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD30FC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739624333;
	bh=tpDeqJrtrmwQyWqXcusL3s2hclJxvP1v7GnxtnZD8+g=;
	h=To:Subject:From:Date:From;
	b=MPRuAJS4E6LdR7jxyD6JgY+QfODaYBDxXoKp/hYrW8HyMbRA+1FAOpAWlc+F4vSZ3
	 fcZBnxeY41YfEG1wC4AHJBLceHigTwyYdq2VAUWS4C8cuy+64GDiNOurnQk8vWJ3N4
	 OLyPQInMePlmVmyljRDW1/jo/QGac3fgYlGb4CIIQD0lAd3ZigbKZ0Ns9Y9mGbuPl1
	 kpi8eSIFtfRlJieDKu0lygQlfzAMfBIgRj3lraamMrAa3OCPRkLotgylDD8icWjMsh
	 4I46qhDZFIL1bqOieEMTrInfCbY9A+vzj/0hrCyzCXV7O4SwJV8g3fNHAH8D5XfpO0
	 R+GKgYH4+w3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F4AC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962433360.3375.11723276318933137272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bdd8e344301ee2ff773b97ef78a1c6e9e7f698fd3a86098d706d40b06a721db
Date: Sat, 15 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739624333
