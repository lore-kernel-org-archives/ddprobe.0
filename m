Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11DC24A076
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747760393; cv=none; b=A50q3sbdRHAeX1lN3xlraCLFISFc4Nw7LFQtNs1JRwNtVdhtRCxvbtP6EkhEgo0iMRPSdK4+Zr915S5X3Wk8j0YgHQk5Cw3YOew4LMwyaaJlzDN4O7lWJfDXkRFWO0bz/eTrzguztgSxjN9q52z6JDouh7DUwO3D6Uvt64vY8tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747760393; c=relaxed/simple;
	bh=zDqWiKMV2FOiwGRN6Leu0ttFUPA50dE+bp6nPu7naMU=;
	h=To:Subject:From:Message-Id:Date; b=gtaHuMoOc4HoDFtSW1oBmV8HmHb6mqgvaCyDbETBNt+F/3NbzQGaYtqtY2r6fSO9CohhIhFi9ranVq1GpIS9RbV/I8RSO/4whPP2ddwk5sFta6PzdBs//bLyYenVptKhF8F5OzetcCZbfHkm8V5Nn+jnNzlUPZp5nbz+TuJJ4qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXuIKPbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXuIKPbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02D2C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747760393;
	bh=zDqWiKMV2FOiwGRN6Leu0ttFUPA50dE+bp6nPu7naMU=;
	h=To:Subject:From:Date:From;
	b=FXuIKPbSACVqyTKzLdFpQcAnlW7sY68+4EKbuqncjQTzJlggroRpGpIgLDMN0Dc1p
	 e9lnyNLDQ7iGJa0JxIG/r6zsYvezF7QE9/qB/seEB2xVzyQvPPohLuRZYBEzYLsXzs
	 IeiRn3aJRNcVxDsODjo4q0NwcxVxKOFfMC6rda4CLc+S7hJh8fbAuwsN/dyw332S71
	 jNg2SjtvxaSx0fV95PPceO6EWahtarA72xSZaO54sxEMIMT7K+wUGJeuJ7SGimuP92
	 eYTSG60V6BqWNWiYCnA+t7se2cUNrEUIN1O9lQq368kG4liYCVTqThTSj5wg76ovDd
	 edG8a9cN2CObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E275C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776039363.24387.8296385225104645089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0ade40f4e10185d470d863a641637d155ad65e38c1e9c23ce603d68d1bd29c
Date: Tue, 20 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747760393
