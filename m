Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FEA30E827
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778440834; cv=none; b=eZB7b+HFUw9CkUB6izFB35+bxhv0seoku8kFBOfJWLlGToi9zz4PUylgvEv6vHTmoh7zstBj2BeM+h0XU1hD9eVTt/kAhS3A2w63ZwyDkFjuya0yk8o08NeyRFBBDo8MJsUCAA8vaG2n/tKaTlmgh+UAgxjOCYaQq8KJ02KQ/bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778440834; c=relaxed/simple;
	bh=aR1CD0bVw5nfE5x0rx6XAKkIe9etBkBhk1uwd0xRnis=;
	h=To:Subject:From:Message-Id:Date; b=FwfmXQMiOExWvVaI2HvWseojAKYuY/Y5c1WbRpM/dIvOiV/D8CpYArJY7JG4xckKDa4kJod490+0SRzsiovw37dv+tekBh5S7mjLmNTKPRooEti8mLYpX7kaug6709lLyWovzoZPsdSj98bu7sZByXGbLYtSPKIaxBUx1GMDfVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuJ4U9yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuJ4U9yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C470FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778440833;
	bh=aR1CD0bVw5nfE5x0rx6XAKkIe9etBkBhk1uwd0xRnis=;
	h=To:Subject:From:Date:From;
	b=VuJ4U9ynZijv6W5ElfoW4bV+8m6VuhHcgxqTfMty2oWGtMBT052zek8tSoZeyMgHa
	 GjxXH0ZMXuVWfxoc6VEkCT1CuK202y4wI3EgV4ngpdfRpaDrZ0swEwpttul80WDE/o
	 pEcHeKK6/GNCTx+hmwh+1DkaDtGwkCKiCgK8vK4AL+hB5ayE+6+w5k9zhHI8Lm1OcF
	 b6xAjPpXiKHzjhs3SwrEFhJueN8hZBbCN1FIiBELBY+jt77K0QcvkIjzRsH1XuBT/F
	 D4MhPLOXG58gdSfwq6V2GWH4ybJXOa5Uy6H2DzkaTHyG1gZ7pdP6Mn7FJwIGWR8771
	 j/8Fe5jm6VRKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC6CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844083368.28964.18107812514540487119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedf0e808247638b1f99cb3d5cdc65380e718582149d2c62a6608c4a72be2836
Date: Sun, 10 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778440833
