Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E5225D6
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732728354; cv=none; b=d6XVoUICIGJ24L9F52Sdugs/ZWvRRVxAbDYLDex86+g+miudPz9sPdmYdE8F6BQlT/4OGwjQrIqHd795NEFI0f8x5X1HNvAEeBV/4KBmiILE+kf1BFNLl4AkCZxqKzhVgLS51vDbVEi+C0XxrQPS7/KP1esIPWFwW0BXHAs3A3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732728354; c=relaxed/simple;
	bh=gQrcDeFFPb5kNkY9kY4aRk08+0g6htL9BCc6fLLvh7c=;
	h=To:Subject:From:Message-Id:Date; b=XM2G3BvwlV2ZaR9x1QTKqDARFNcPlUVh7SdkChxwxTXYepnuWS04QEn0oY7aSPj65VMEpJ26sT4jM/IuaqSXxnwANENiua4p62KG5AusVoszMNelIwNgopu55x5ET+zpJjqiHgpldLDRWz4Eea+3Wk/A2IhPBKx+ikLLZ9Eg/oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdQgeEvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdQgeEvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E1C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732728353;
	bh=gQrcDeFFPb5kNkY9kY4aRk08+0g6htL9BCc6fLLvh7c=;
	h=To:Subject:From:Date:From;
	b=SdQgeEvuqlwuJlPWRITVlMXY5DeKVR84jjFwFUW6ArQUw2rtpjxQWL62OsAOGD7Gd
	 NFcbldxgh8GXvYbMzKEEUNxd4SoRSkbOu/ayaDczDFQhfRPauKzgKxEOrvEbXhxb+a
	 a/lfgZIk/y0jdGpN1vWo9AwgGYaJTZVlc+yY8dOBDH9+/GOkhXXIQPj6bzte9o0vTA
	 7zSOuaeh+NCIH3lA/eh76IXl6q/55r8wn3SPiwBga6q+5q+gHJ+oAVSJsZ9atezXBx
	 z8hyY9TPWEowdR1k4gfM8stVbRKBpFoNHQBY3Oo/aZeXegWaW1cwYYhYtzf2ITNL9p
	 dsmrr49cvsr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92466D6ACF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272835358.22648.14440412922612295437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4d20873eee858be79dd88f228945bc3f2d647296dd7597315c5661d014e1e3
Date: Wed, 27 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732728353
