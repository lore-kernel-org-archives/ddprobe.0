Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5F4800
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768521834; cv=none; b=JgMl3KXvTGG8gXdl5xGk39BkdLmTdjR2LGE2iMfIv/zy1/PCEf+RTzkCooMZeMlK4NFmYFA5W0GYXT/6CQmryzfNP+juPtQk4lUvrQasCFICHO048ERDqLms5gOo87JOjDwGzQnPWbnD9Qdd4s5nnCERWsiJIPrulIFBXgk8yKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768521834; c=relaxed/simple;
	bh=7l5ab2f4hJhnEZJDJwD3rFso+26wlFkl45Xm9e+/JmY=;
	h=To:Subject:From:Message-Id:Date; b=qq5pCfuN/hS7lnm0o4vz6AMQkSA+8kilNN6gHbGokNancXVt3DQI4pxTA19D99yWNKckw16gwOMZii4GAhQkJ/SXzyBhh/gz3gLzRN9zFH5IFPWcQ+5KdkN5CYCS7t2zug8L8p+Xjx4nFPHsfSZHOyYVYBkTab6k/ESAEZoYNZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLflzVTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLflzVTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBAAC116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768521833;
	bh=7l5ab2f4hJhnEZJDJwD3rFso+26wlFkl45Xm9e+/JmY=;
	h=To:Subject:From:Date:From;
	b=PLflzVTTAaoIO//0WQUki4AvrSXravSqpjrmmo9stHjzs6HsmIF4O9faKkxC51k9l
	 tF0XSjt7Dcc91aTaj0rG4suXcA1sQWM2nsxfeRTzdIvtDpOdFhgGvJVR+GhjULq13g
	 9JUAo5bfgWSwH5ofKs0fFviDg+E/lclvCmSUzfRKodDC24v97eab1qTjQx+toeTJtA
	 g5HaOkf8fG5pGeLFb1bXPt1xw8Pb2Ctsyci/AlgOI9so8FL/LAiHJJv0uduxPVgAbw
	 Xc4TR/PdtaqR+QsPFrUSKq4NKnf7GwPMiRtfIdPb5WWF/sA47oq8+Ghn99T0uAUUJH
	 KtqIw8PwmRL1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92478D47CAA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852183357.12115.15605401622242127096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71384e6adf18b03fcf2046e8848f27e767f920ae330ff8ab79d5eaae50e228a7
Date: Fri, 16 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768521833
