Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2033BB5A
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770947694; cv=none; b=TbchH3KdceiVVYGbyfbdH/mwcm8J7usH8IGDDLk5uJvAW3zALu62Xr0orOTPK+QPlWNBNTMwcLFwOZ0caSBNEdkHQbw0P7UxmSMkWzNL9W+yjTF1cyn410U+DQpQvYXie/fHfRJJ4ksUpfijb2tN9LqHVxZxVMS+sfIQJam/3HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770947694; c=relaxed/simple;
	bh=AlQS9ZWqQu45DJbnJrUfAlLpbmJY8e7GiMvGPWNkQpo=;
	h=To:Subject:From:Message-Id:Date; b=ZO+L3ZNY4TCZ6hMBTXCikfAfMJl7usHDdFCqYQdt3Qvd4X1+XB/xO8oQSWXKbkuk1wnK9SZ0u2LrkVzkMytlXhzzLw2W2XcbdvTfxkJD2F7wEbS4iaDAleqfprti7aOU+tr4Mtf5NLJ9JEhIVrwT5seOlR1D//43oJNOuafl7R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8S4msVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8S4msVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD17CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770947693;
	bh=AlQS9ZWqQu45DJbnJrUfAlLpbmJY8e7GiMvGPWNkQpo=;
	h=To:Subject:From:Date:From;
	b=l8S4msVszFa+1BQ0P8TVaBnzGctoMjjn1h0dc2tKmHtGXz7wr1tHvpVJOCS8HhMcN
	 eNlxucygeLgJ+p35ZNNA5hJDFYPr1fvwVdPbXCAMjVF4RqoWTzwhThfQp46CLQslrh
	 Jb6txGr20zj6dUjBRzvNys1uY0egIW4x5kbYQryHVyn+MICLNMW8U6igqCf7W+px8x
	 ZkM2KzMD35KF7zW2IXtdZWGek1NAMKDR22TwRIR5mysyeH1j+Fz+DvJBCJTP4av0Ba
	 wte1eJ0bhSiFDc1VEFp7eYdkA00yZJb8PCDSXWgDyOOrg7dXdjlNxWWAyNAeLOc+zR
	 0ysuK4TJsSYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF91EEA849
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094769359.18656.14955816213713745649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f1e0a9dd4a9ffac21bb57ed2f010089f7d4ffe75b3bd2915a7f1522bae18ad
Date: Fri, 13 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770947693
