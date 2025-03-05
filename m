Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BA725333D
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741201134; cv=none; b=ecZxiYytahEDETqHq6+yq72TSwVB1Syjp+RwjoSISJRvWBkUl3RATb3twRNvsRE1s2rWvNi6yFN/meeIzFi1sjlfU7q+AdeI03oXo5sISY4KcJ2iOCmPzmHj/qL6iGYg0WZDtJQLsmTbLbkG681J8id+8OFt6HftPWIPNgzA3IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741201134; c=relaxed/simple;
	bh=CWz4AAc/ltWtVqR93kpePuDEevonzwOilkHJ8Y3Y5vI=;
	h=To:Subject:From:Message-Id:Date; b=lzdsglX8Kw63FBmdL0xcYAwuQw1vhOBqDNtbSjFytFWb9STrsdVtjTxOiAzIuQhoXGrYsa+bf0uNvL0KJ1SpACga5U1rOYquLH6VBzSil5aYKXkFeA2LIPxxtxjqmOt5w9dgl9BrzSQUO5adLGg0GZXnBVt3+D5mcf249SpmQHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzQD8Ti+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzQD8Ti+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC860C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741201133;
	bh=CWz4AAc/ltWtVqR93kpePuDEevonzwOilkHJ8Y3Y5vI=;
	h=To:Subject:From:Date:From;
	b=LzQD8Ti+jI6zcHQaAvPmAj2r8SHVhkGimnKmWpYh3V5ju9PHypXc5XyG7wDRvBMSq
	 Syv7zPraTh39jeqmzHbWwIIhid9kWVu6I/OpELlVKK3FF/PetW7dw7RVgC7CN+RIEh
	 nug43PND8l9na9MCY/suNyROel6ICTMp6fAxeRkpMHxXbUA8eUV4rUeFlv73hKPD0Y
	 9nzPxiVoXsFzOuh1u71UhUeoNHuw4MGGNYPtkUDEDIU+SjivrJv/wqz4MerNbYarFd
	 pvldnDYs0W27QsfdQXW38zu9bYJ4VCfrpXYV/29LEsp2On2jZsmnfvVRPg+kGKEkoH
	 GUbPHuGykVpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666FC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120113360.13148.18196637652299020982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac398c9600fd8af6ef8d5f6075bd23bb09f797720298bce605f705d2d269e3aa
Date: Wed, 05 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741201133
