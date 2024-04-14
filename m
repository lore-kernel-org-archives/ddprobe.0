Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52705219FD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713125963; cv=none; b=EDVSrY2l6xRc5M0mL8zv2W7J2tZaGW4WXAjdQg7vKA1FZ3yr/MOFaWpoSS4J6ZaGQdu8uR5uonzsxkwzzPUYkCdQjmVz+Sver33whztVZE/A7WR1qaqRLzUVFvno+nEeELqwRi1pCFSUXie/9t9lQsD2f1M9IFnC8UH1hKCmuq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713125963; c=relaxed/simple;
	bh=numbgJEGn7/u0YSk/rp7Jp59ktgIQ9Pa2NCyqeV//L8=;
	h=To:Subject:From:Message-Id:Date; b=avgA2C50K+rHeJrsvTf+/CH1NDTJNQeFQZgJvuQedyTusKIyRmgLWzULM4VaPTYTJAJoF3M8YTkfrSCfgbH8AVjE949P4ZzVef01dmTHQIi7/8AxqxsOxFyGd68qzP1yW3AcR2vMPZYa57e4YcR70ONkvqOz+UVDLbCAPWky8h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEy+J+gU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEy+J+gU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33AFC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713125962;
	bh=numbgJEGn7/u0YSk/rp7Jp59ktgIQ9Pa2NCyqeV//L8=;
	h=To:Subject:From:Date:From;
	b=cEy+J+gUrsaOzWbkLQDDJw5GeNtq6f3NFuGgisXDtkk+6WGN+lg91XvmbTN4nAoA9
	 11HpgIrsGhrsWrOb7IsMv64ZbQZ/FNIWnrfMcPxg5kCy5IQXrKAFEAtiW8DzMVv2BY
	 BGeYJmd5pagQPfHZvnD8nbYFYOwMfnQulEeX3e1EZyW7r3K8eph76A5BT3x1kmYszs
	 Il35h4c7f7cfxV2989OwmNj6v2b9ISYhZ8C/blGgYerIfyxJ0tM8XNeUfnpCyu1Kpm
	 pq3UM88GsAHtHD6vhobYZYXzdf+fbs8lRDHOGQi2OyDYKR4c6q+I6NT+Q1RRr4zfnh
	 Bjrvlg5EQI1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1663C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 20:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312596276.9755.6378545345370830910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f860d300fd673f6c4babef9497d84349b3bd8ab3a1bee102533eee27d524b35
Date: Sun, 14 Apr 2024 20:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713125962
