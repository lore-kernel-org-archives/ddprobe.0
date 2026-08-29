Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B12F3515D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787989234; cv=none; b=hvXxzpg6WfA45db5gFJfcXNwZ6RFhCjWZLIZW9DIXywHckIf6o0QiKW9ISmb+W07MWEGfT8QQsaHXcuDbXq04VkgZsuFaPGM/wN+e4aobgKVGKVswVeSBtu+9fl7+Vwf/6c1sdTN91HChdcW2Iblm6qu4w+6RNe1pG3M7vAJEGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787989234; c=relaxed/simple;
	bh=ip/hUq7fHDlyhHTPtwpykhcZeW7eEYa3sXUyxtklC0I=;
	h=To:Subject:From:Message-Id:Date; b=tY/2Ty8hIIqIXCxbOFmhBJNyqxOIbVzANom4QXzl6/P6Qlbic8zbTUd0F3X13cYMzfD7bBX5sojpfPyuH2h7r7agjNld9CdxzOWSSNCMZuiSmrGNw3vROdgEJJHxzr49cQfxqHm5Kb/WAdFBMAxSdiWPqza8bHALuaUWJaiUlaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSNGPp+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSNGPp+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2624C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787989233;
	bh=ip/hUq7fHDlyhHTPtwpykhcZeW7eEYa3sXUyxtklC0I=;
	h=To:Subject:From:Date:From;
	b=OSNGPp+fIS1dfPcor478tF/V20kgUv/OtiuW315BH0AgeH2CxV5HTeDH/JQfynx9h
	 vXcKkQjxg/9R9OmezWE2ncDqq1Llwiaq/3vm1a+05VcopMFlOfjobcV+HCZJQsD9S/
	 +2eIZrB4Ki7CA2amXcFmPfPB8h+bNeEKpBcVJ6E4/yzMIhyH1e2EnBbdmOQ1DRXmWp
	 bpC19J5ersSMf3qvzkjB03v6brPpmNJ1z6DNcOJuZo2wRhXPgzXxX/5X98l3X4m2cQ
	 uPdU5L4qfmukbNugeIx8b+VuqtuQp5VSQTKiCqxBY+Cny/RpQj7BwDyJ9dOH+RPcro
	 vU7EEwvZMOvnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C0C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798923368.15224.4985343963174611776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c497cfcb3373b50d50e122ab8b31d81ffb6bc49f26bef35e958efeb9493497cf
Date: Sat, 29 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787989233
