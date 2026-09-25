Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633D249F10F
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790343634; cv=none; b=D44J4Dzo5ZW5aJ8oFmmIK+59wL91pegCVn5EdfpDtKf/O3ABBKTgVor4oazGTqTLhoiYxDD7TBS6cOjomO3VYXx3ftkDzf9tKC8PPnNWa07XGMwqh2ahekDd9ScZFroxFxWa6flNi+3iwsJH2hdFhW2gJyyFes5q21Gn81KLluU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790343634; c=relaxed/simple;
	bh=6vWb9PXAgnYMrDV8r6+dlAjVUxWyY+KiBt5/uJk+fbs=;
	h=To:Subject:From:Message-Id:Date; b=pXQ68Ekqr17milpMWA3XYKnXcP1Sd8JGNELuEvLi4EMiyIy50Syt1Yf4z9bPi7fwV4m24KAqvHjWFy9PCygHg8DERzgRqG3ikW31F5KpVvvc0KBvBlDqCO5pXxhs40HHO9GSdlC756dWPbrR/gFY1A7K8SdyypbsZu8dnw/luaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2E+fw7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2E+fw7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BE8C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790343633;
	bh=6vWb9PXAgnYMrDV8r6+dlAjVUxWyY+KiBt5/uJk+fbs=;
	h=To:Subject:From:Date:From;
	b=S2E+fw7rGND+iiQ0C+LU7iA1iskK8TJJziha94z5e6eAQaWvoNg5ewMwicD7J5zfT
	 RT3wfBybamNRenieEKNeHVdMhbHGa0nqMTe3521Jh1cA1e+SdgLINA7rQ0lrBI03ml
	 nGqiupiPSxVnx4wobN5NqFcakNW650xlVM4bBX0KqF4eVtRtJihPW5AblPS1vIkaOz
	 2bW1Tu/Hr7MWDTWr2aS4++FEm+KIqQhJedLWkrZvjFyOGtPShjyV+WJvcROcgHjvp8
	 ueh2EU+K/RbSsyYw9EKijO5uID+yEOLWIsfDLidSBK6Mz8e0q7Vmpiy9zTkk8XfPJD
	 1VOctmE72IWEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0925C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034363376.19552.17949318311863228450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad06621886357e2f515de8e2604831b608b3c6bfb50fe3d51403208e46639bda
Date: Fri, 25 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790343633
