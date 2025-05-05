Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4358C1F2BAB
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746442194; cv=none; b=k0fg0DS/QaE2lZsogzgYIOFfxDDcouvSHLWVGC4srdrYjJGY885oA0DuNez+eUN76GmJ34QDEJuZOwHAPlp8bOAcS/X9eYhhTkhwrYDJQVNEiOphVssL8RvNBTrBdHN6nFxUHoHJ1rmIkoMU++4d7/Rj3VQ4vvj5WczTioQ46rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746442194; c=relaxed/simple;
	bh=Sec6vKvis9WwOwAI73bv0IvJw2nz80ilIgIaijA97Ho=;
	h=To:Subject:From:Message-Id:Date; b=OZqJ6/VoJtzX6cup6mI2m/ccjhMl1ntAXe4terMzK/FBTaYe1Yz/xCf0lbOv4kkyqiVNgT9cVxG7JmxjqIyctmcJHLAeZfJe+gVRl9UEzUdME1Y4r0b8jK4890AQ8IfOYV+ey3xX5evLtyuIbQCf4jOXUzSRnIPYwKvn5/rvpbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQqBgi5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQqBgi5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3280C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746442193;
	bh=Sec6vKvis9WwOwAI73bv0IvJw2nz80ilIgIaijA97Ho=;
	h=To:Subject:From:Date:From;
	b=qQqBgi5LYsBk6qucK5wRG4rXZe/J1nspKPcikf7DGJ5XD2rXgP8OV+1NczYhmJMi5
	 k1wArZygPY+Nazx+mUSIVEOTs0sbEBbT4V4cabxJvrZ1YBctZONXCX5hglaZSEOvgd
	 rw7N37s6qcL9W6y/fqMyu+qAhbY4he8+CVnF7ejc2cRa60TMQT7+qwz0RiJuY6VmMl
	 e9ki8Fb4DtUNN0ljL120AK+JnOcomCIta95S8QRIrLtRXfD/iVHtrVTxW5nHT62NIi
	 ugyK+nWQ4P0nLj5+njs5wBmlx4ia3k8PljbBRZpvpdHFHiY5/baok/hd7GNCvjVBhB
	 mzmCdlzMLyK+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85EC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644219358.8995.1952296786104911229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438c7e74252611e66a303a027a92b7037e256aa050950da5f259c963cc4f16e0
Date: Mon, 05 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746442193
