Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CD524E4C3
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758232793; cv=none; b=oa9codyLLJuVotdi8fwQAZq9m/NSyRDqbmQcwOSuWIDXQwv6JjDxKI8T8kmEzpVi3o/2KN1mvirgssugGij690uYCzALZGGAPV8U8zWeYP61LoMauQa9h/UStZLQomDiseZq9IIco/6tX8f459mW2gkn1S7ijleKbSgrYXL6L5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758232793; c=relaxed/simple;
	bh=04gV76rljIxYc832D9a0rsOwr8L9M9AHecvqHHIuozM=;
	h=To:Subject:From:Message-Id:Date; b=q5KrYyAJjlmglw8mZhOBkhmsJEUproqVNYOG7VcZ3RYeEq0vBlQwB+T2+ellKwpxpLc3BF11qgtDApy5cFp6Ssx9PCnQonAUhhEdr/06GZcpAG9TuF9m7F0aXuEyCSbZGK4a7rWlsLY54rvMFlKGtMCpmY9uS3iUeuBYHX0ukEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUH0I1EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUH0I1EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D343C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758232793;
	bh=04gV76rljIxYc832D9a0rsOwr8L9M9AHecvqHHIuozM=;
	h=To:Subject:From:Date:From;
	b=AUH0I1EYYSsSHiTY2JaCPxmd46FIQ9PCs6G+xaKmpMHgO1ENT8foKu1Q7hSF8RlJH
	 xeYWXSQYeGyUpCydQ1N7MJkfU6Fzq4vXvVELSuv7swjh8z2F1X6VDXSFFwxrm96PT3
	 f5cUYGW6A5hXM/xTM9yDacGO9iqVkKQbdnxWk2JbNbEajNdUV2gjRJmgYaUrAcV7pp
	 7+aWli3PzlFenBl25VNxILSZVPdMdn55j0bWd4al1MRDf4SxH1EJBJxWKnUCcBzFx4
	 l0sEnWamdDXZH8QzFMIZkavdCIoTKuG3PQsgLfgjcUHUrq1eJIgrXQdtYFmenNnm44
	 hKsfKv2iikt5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF3CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823279357.24625.9051223192934900055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7b11b78e95a9fb6dfcd242f279ed802bf4caabcb078ce7d22cc3d41bf1f9d1
Date: Thu, 18 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758232793
