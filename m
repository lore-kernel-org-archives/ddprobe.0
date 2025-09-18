Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2770CCA52
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758203394; cv=none; b=cL8F3ya9w5sftiaRCa0omgFLkdtrIC5r17PSdb4Ao1wuiPt7R+TtCvB8bUkCHOdeBVAeVScX+K7CbxBZJIUoHpRB8v5IMRfE3e8znuOWOYlD9DKADYX5X/QNeoLuWINaNUIAfl54HEHi8DsFFFIoathQwnenJxFE+Q+oO2BHVeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758203394; c=relaxed/simple;
	bh=bMIl7WOe9/Wq0De/FB+lhREiGJFptfO1wM2u8B/ru94=;
	h=To:Subject:From:Message-Id:Date; b=UlXeMBSZkAdmBuCic7/8SiQNPe9n4VBkwxlud10OStPGdx5zuMSJUMFOpDS7SjpI3o+vPNsZiUqas5UIGjFpnW3rI9v2MkZDJhapeZ8mX7jJZkSBK/zdR5vXUNLmJl7Fhs7GIsYjEjxuvsFU4teo7o+DkJz7VoxWmHW/yutO3tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK3POlZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK3POlZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6545C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758203393;
	bh=bMIl7WOe9/Wq0De/FB+lhREiGJFptfO1wM2u8B/ru94=;
	h=To:Subject:From:Date:From;
	b=GK3POlZQpSc6GGM9W0dQGZaont9r0Zf9+gkh2nAVlKwJkpdFrbdNqjSZyuKix4M1J
	 1Cd2tuEUe4wyKIm+kRUxWaw5iFYkEnuGDuZTMorNuoVsnG5euLj3gNVY/pqsamIRFr
	 Ga9ChsKxgqe8EA8PCY2BXLyylzjFnIduwKEh7GfvfxHdgEdE/sS6z2rK8vzinztheD
	 7QnOl7S4MAwTpZKlxVw6zJLMbrCV8vfBobpEOTEyEGKx4ZtU2Lt6wBVOB+b+YHesPL
	 lXtsTO2i1y2rpqVk7I1M9rkF7XZcCJZiLMqdpJUN/zTvAQuxJU0VAUnWZYlL/o2k/p
	 J3+L3eRPQzASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACECAC5A0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820339358.30389.238574607549347645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bd871e7730d1f24aa9eef23eade35d6c392cc9bf024815fe7aa7534c80843d
Date: Thu, 18 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758203393
