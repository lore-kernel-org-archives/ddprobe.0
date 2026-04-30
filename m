Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192B413FEE
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777522654; cv=none; b=SiylZ8XRHCD43/QkRRTHuB0JR2J7B+O/zye0PtSjF+BrGRO66Og09xWZpvl49JPV9lvyqTeqcaJusXQLbFj9YRnHsdVr0eX65vFHaq8dZyBN0tck5BRB0LOg79qriiC/ejGq+YB13Hz67zcoKXbhCgWw7SzMKOsL7We8LJcV9RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777522654; c=relaxed/simple;
	bh=GVV508uSu8oiFcfTsrt/Matm7ISaHQvefJdHiaHQcIM=;
	h=To:Subject:From:Message-Id:Date; b=UTUKE/B9sQSK+1X/RafDDswdNsMZiW9VTY8vzMX64clnvR4ys2qfyHob2HC4zcMQi22zxDuejSfUAJKxW++rS2dweZWF4jktwPniV8QY8VOtDLqRjAFzxmwhKayQskMZodreYyDcn64Ab1qOwQpF/O9nyM0hH8L2Hmr1GRh8J04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGoQlBuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGoQlBuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B838FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777522653;
	bh=GVV508uSu8oiFcfTsrt/Matm7ISaHQvefJdHiaHQcIM=;
	h=To:Subject:From:Date:From;
	b=UGoQlBuoCMNPgLPbKuy3wXxg3kwnzP9yjiIolAytUQL+XzDYPYInUnZxe7nI8vrDs
	 sQkH03DzNaqBDr+BZAzjv2xhR7LapKlAfQaM/eBHGjZ6VMFW/OpDt8+y/QBoHid+Rt
	 u4ksdQP6d27E2/XprK/COngR25jYzTFLohMI5hDN9WPaNCItgJp7085L7CulrXlMxm
	 p47CWtZEsaihDxrpn4WThO1unUq+Lexa/Q26ToWW/Km0MKILjhf/i5npP6ykMHo3yb
	 V8rXhaq9HPU2kRrO/ircLTL0SRTzNuAfnMS/XDt0ditxRXbzCL9pCFrCtHoO+R6S5s
	 KGzvuG3xga4Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16BCD1297
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752265368.14548.17118549452334999296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db790ccead20dd2a0f4f8e1c725a5933a73c29a420976c94560a38b2f9bd3a0e
Date: Thu, 30 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777522653
