Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0935C191
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777328254; cv=none; b=IVNbhdClk/XOIWc7QRlB6yqmLUvtKRiNa/st+PT5VKfqzETPqi9UpyLP5WhbHtrp18Ns504GQdhf8g/uC0O0CJ1W4Go47QZ/Z3RBDl3s2HUHN/f7ooV7ujcrs7+grpNVNRRvYdESJH5kVm5rmJH/+jAfhH7YiGywCY8EmQqcWfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777328254; c=relaxed/simple;
	bh=nJYh/8/maX+L/ToYp6lCwtO1A9eeZ4eGxoAcPrbVcCI=;
	h=To:Subject:From:Message-Id:Date; b=slLYxt5DlsrgWLrPLdf5FM4pV6wu3ifws4zxeBIq5v1DgeCPjeQaARS7mPvY3gF5xDcbDuwGGfXo4szPKafVvIdAADJ9wvn+9JiahOQJNkWLRTW/VcEVrz6/1/7j18hnkh9uFE75UCk2XBMC9QnmAx2mkL/UVjfgT7I9Xr6/ZXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIJKIGp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIJKIGp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C8BC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777328253;
	bh=nJYh/8/maX+L/ToYp6lCwtO1A9eeZ4eGxoAcPrbVcCI=;
	h=To:Subject:From:Date:From;
	b=FIJKIGp7VbjQcfoGa6ON1y3MbauaE7ydX4lOzM6BWRbj9Jqh/dWRI0IfxTi8EB/IB
	 O0em/TpySXjjhJBJjnoTmxOagilmCwHGfRmaH2y++gMCANjZAW+Q4BdX4md1CzXCC7
	 t7T7sVZmdr/B9gGbyW8aBi642MaqTHojzwZUZipYFErtpkBlcFRot7EVQ+PpUpK+T6
	 DCX8e1wpTmN89AwApmE9AK1XadlO5PaQzabV07NgsgJBoAt7jT8yUheMJa1zQjXZHd
	 wmwKgZawhLcQvOpWdojBrNDaXmqsZ4w2MyQZ70xslmIy5wnWGsGBY/mzfDpQZevo8U
	 J7VHCC0vp8lUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A916FFF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732825368.12046.47681657275190048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c83b63258844a78dece84d6a62b758447fde69beab8139f069e648996bd8fd
Date: Mon, 27 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777328253
