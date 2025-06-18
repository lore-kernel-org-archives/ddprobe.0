Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178DA2FEE26
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750265995; cv=none; b=fQekbMytP2qWzVJAK94gcqlPtR5Md8J6zSFOLh3aOQfrf9lgbouQc/gJmEIQXT7SqAkAN1C/50xBrSHXfPu/HnOlrmvA+FBkiflSgbNbW9Sp2BifzwoWlrBIoW15buMIyLnOZcOAkBL6zDTcX90mfAxSiyjLykz7wGRRwW9Kr0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750265995; c=relaxed/simple;
	bh=NYZ2ZGdEbWcFMlO+QiMhqvQFyAkZj8oil+tTKcF29cU=;
	h=To:Subject:From:Message-Id:Date; b=oH+L3cZTr/WRDVLyVeDvio16Vp5rCn9RFi3Ytg2j+ZpHQjxt6QpmwKQrVN5rjgNgRaxPMkkpzTFbSfQmJG1LhKNJOh2225qrkLz4dyqVfZzD0aq1QC7sdz5e0BmuzxS/9UJ52Iu8hs8vpiI0EwimlQGne1QuGtgKA4SGbpfNXtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5JIIh8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5JIIh8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC43C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750265993;
	bh=NYZ2ZGdEbWcFMlO+QiMhqvQFyAkZj8oil+tTKcF29cU=;
	h=To:Subject:From:Date:From;
	b=E5JIIh8cf44mywFJ0dgZ/QQAZbv3ez8T/yIqCVZvSTwyT/fbPGUtmUFNfpLG3a88e
	 hX3AXh1HkdP34prH2F9BUjo7WRErghkHkOwA9cTZxhESmnX45Wlkv3jjDxcExcltcM
	 0SCENXQZN9FVBW4i0Tb1O3omf60LD093S5ZTHDW8nhcQBz2NoPNB8tVzmy8zCYt0Sk
	 3O9YPUWW+zyBciMgNSqy30/Cpk/qQa+4dv/zm0LsrEz3j/3kAMhOMJPtA+yoKfRST/
	 nGAvnqzadaCkoSzYRfb+Xz2W0zg5s1iIJad7EfLlSa+JfQyPpMRAVt9k8J4A9p0qGt
	 LlYTC3x3LS3rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006FC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026599358.12373.9537059950108558465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f20d2793e4fef21f5f736dbad826546a41294521a413cf92df529ec7a35151d
Date: Wed, 18 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750265993
