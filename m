Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBA019F11B
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739013954; cv=none; b=a/QYlhl5W1WeUX+ghGAil1dIuZKZzA3nieib+tqWInvi7bolRYn0vtFLmKYd6W/8wmvHviuwgC+HofCWngGYAWuY6dnpYKhKpHew2RpmACJ2uxpW+GLuV4fOPwYS6c/M0C1DK/OsvHSuvGdEgwNqbq9V/ppsRLeK+VDCDdDwvss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739013954; c=relaxed/simple;
	bh=2RSx3mbvTB4zRrYkgotr2ksuP35rZOJETkHSzI1xW7Q=;
	h=To:Subject:From:Message-Id:Date; b=Iwfr1GEVlGaJr9cOZhBXYo33MuOMQYAnMNoCAn5OGblWAWE+MyGCU9KJLkS2o3mmf8n6ilgcTd6865OcFB4eB0ubABpIH7Nzvpm4fqjzICcwxuSWQ5ydyv8XNIZjm43wxBukFpdcXJ8D82NHq46cNHZYBZtKLPy1ir8n1ito0l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxa4A3oG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxa4A3oG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F316C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739013953;
	bh=2RSx3mbvTB4zRrYkgotr2ksuP35rZOJETkHSzI1xW7Q=;
	h=To:Subject:From:Date:From;
	b=hxa4A3oG0uPXfSS5Eu4VK0T7NJl0gLigRFsxmZffV6RiLMVx0y4DalTsAwVuFn7xY
	 m0lEmLVAOT76LVvgQ57ylgTWs+nK+s6sBYbf5fRKxXup8lwhA3SOY7wXXcARhTOajS
	 m5TB3kKJeKy4b6M5W51jjCrfgohUMlgU/eFlNtDn0wT+bNAoIaDhNF7fSD2Izo64TQ
	 nB6GwtKhKuAA3fQVj00uvkBLCeODl/sFyQOxBYk/mbMNTtYGU9X6zDUozbbbKNGaVt
	 FLgIv1pZHMIkAgjJpYo0ePS6MdGGzLPP6R+Cp+WHTUkZmyzT4ukIMm2vsZKBCOG9sg
	 un5wzVnsxBlPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB65C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901395358.6015.6216814819472374692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f6a489e3dc424f06e09beee606e0b01d79f99fece8fdf4ca7f8910ec964de7
Date: Sat, 08 Feb 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739013953
