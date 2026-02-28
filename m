Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB442848AD
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772277294; cv=none; b=vGcz8SL547OV5Tr+h+i+UTCIxqcreq4DW0QGFasTVMnqBZNly+S1IbcqWXf7NzAeOdCJ+B+1pn5XoJrXFrT7VJC2VtBH5yY0a541cREAMAUakqAqTyab99na+9EQ7D8MMqnfXM6uNNrbWUXI+1hCTjJmyZ6IfDA9/mGv3dYAM6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772277294; c=relaxed/simple;
	bh=U2muOrteOjI/OVRT0JBZaXIrgi3TqRXZ7piF423wq/U=;
	h=To:Subject:From:Message-Id:Date; b=WYztAUG7apu5gxG35ycOQWPQSLXVZNlWaeKRuQz/BEbUXyEsoZSRUPTt27waAn2Jqah2cftvz2/cekR1FVu4UGGJHrgFYskWtllDM0OONCE3tw1PupymOynQym/evrUcnVf7z2c0hjsQusSjSKoNx2fFflzfJucAjOw05OAFLTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyF4OK8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyF4OK8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA88FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772277293;
	bh=U2muOrteOjI/OVRT0JBZaXIrgi3TqRXZ7piF423wq/U=;
	h=To:Subject:From:Date:From;
	b=PyF4OK8nt+fhMnSfJ6xqh/q3dmq834kgyouYoeMc22rlXm/VxfIX+kzXwpqeu7Irz
	 Il6ik3xrhyg8T4T6TUTLogp7QoBMjuY78KTesy8QnBpTJte0In7CQ7/U+/EOXBN941
	 upe4ac8tPdZPv8kRG+Sgt6cOjh18RwRB7uG0RCFbIdvsog7nZ5o5GfjkZEvogLQmsO
	 Gjj58Z2Mj8+7+9VX/Y8EPRPZ1M+PvWCQkUXzlhhj+ma3iWtnK1TL0eVwuWhN3k4GPM
	 6j1SFx7/AlJU83FMFDksbav2sxBAvUaUj7YhXZ+A8fqAXJqRTCi3sZAgpIVJK8W85R
	 9FkyEiSjtl0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F5AFEE4EB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227729358.25414.9484189332189412318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b776ec318b4456e3364004343f73596a2d851529a6b4c1ba350bbec3ce647c
Date: Sat, 28 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772277293
